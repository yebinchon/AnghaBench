; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_key.c_rxrpc_krb5_decode_tagged_data.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_key.c_rxrpc_krb5_decode_tagged_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.krb5_tagged_data = type { i32, i8*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c",%zu,{%x,%x},%u\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"tag %x len %x\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c" = 0 [toklen=%u]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.krb5_tagged_data*, i64, i32**, i32*)* @rxrpc_krb5_decode_tagged_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxrpc_krb5_decode_tagged_data(%struct.krb5_tagged_data* %0, i64 %1, i32** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.krb5_tagged_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.krb5_tagged_data* %0, %struct.krb5_tagged_data** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i32**, i32*** %8, align 8
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %10, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ule i32 %18, 8
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %108

23:                                               ; preds = %4
  %24 = load i64, i64* %7, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @ntohl(i32 %27)
  %29 = load i32*, i32** %10, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @ntohl(i32 %31)
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @_enter(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %24, i8* %28, i8* %32, i32 %33)
  %35 = load i32*, i32** %10, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %10, align 8
  %37 = load i32, i32* %35, align 4
  %38 = call i8* @ntohl(i32 %37)
  %39 = load %struct.krb5_tagged_data*, %struct.krb5_tagged_data** %6, align 8
  %40 = getelementptr inbounds %struct.krb5_tagged_data, %struct.krb5_tagged_data* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %10, align 8
  %43 = load i32, i32* %41, align 4
  %44 = call i8* @ntohl(i32 %43)
  %45 = ptrtoint i8* %44 to i32
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %11, align 4
  %47 = sub i32 %46, 8
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %12, align 4
  %49 = zext i32 %48 to i64
  %50 = load i64, i64* %7, align 8
  %51 = icmp ugt i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %23
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %5, align 4
  br label %108

55:                                               ; preds = %23
  %56 = load i32, i32* %12, align 4
  %57 = add i32 %56, 3
  %58 = and i32 %57, -4
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp ugt i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %108

65:                                               ; preds = %55
  %66 = load i32, i32* %12, align 4
  %67 = load %struct.krb5_tagged_data*, %struct.krb5_tagged_data** %6, align 8
  %68 = getelementptr inbounds %struct.krb5_tagged_data, %struct.krb5_tagged_data* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* %12, align 4
  %70 = icmp ugt i32 %69, 0
  br i1 %70, label %71, label %94

71:                                               ; preds = %65
  %72 = load i32*, i32** %10, align 8
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* @GFP_KERNEL, align 4
  %75 = call i32 @kmemdup(i32* %72, i32 %73, i32 %74)
  %76 = load %struct.krb5_tagged_data*, %struct.krb5_tagged_data** %6, align 8
  %77 = getelementptr inbounds %struct.krb5_tagged_data, %struct.krb5_tagged_data* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load %struct.krb5_tagged_data*, %struct.krb5_tagged_data** %6, align 8
  %79 = getelementptr inbounds %struct.krb5_tagged_data, %struct.krb5_tagged_data* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %71
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %5, align 4
  br label %108

85:                                               ; preds = %71
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %11, align 4
  %88 = sub i32 %87, %86
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %13, align 4
  %90 = lshr i32 %89, 2
  %91 = load i32*, i32** %10, align 8
  %92 = zext i32 %90 to i64
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  store i32* %93, i32** %10, align 8
  br label %94

94:                                               ; preds = %85, %65
  %95 = load %struct.krb5_tagged_data*, %struct.krb5_tagged_data** %6, align 8
  %96 = getelementptr inbounds %struct.krb5_tagged_data, %struct.krb5_tagged_data* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = load %struct.krb5_tagged_data*, %struct.krb5_tagged_data** %6, align 8
  %99 = getelementptr inbounds %struct.krb5_tagged_data, %struct.krb5_tagged_data* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %97, i32 %100)
  %102 = load i32*, i32** %10, align 8
  %103 = load i32**, i32*** %8, align 8
  store i32* %102, i32** %103, align 8
  %104 = load i32, i32* %11, align 4
  %105 = load i32*, i32** %9, align 8
  store i32 %104, i32* %105, align 4
  %106 = load i32, i32* %11, align 4
  %107 = call i32 @_leave(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %106)
  store i32 0, i32* %5, align 4
  br label %108

108:                                              ; preds = %94, %82, %62, %52, %20
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i32 @_enter(i8*, i64, i8*, i8*, i32) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @kmemdup(i32*, i32, i32) #1

declare dso_local i32 @_debug(i8*, i8*, i32) #1

declare dso_local i32 @_leave(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
