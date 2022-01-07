; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_key.c_rxrpc_krb5_decode_tagged_array.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_key.c_rxrpc_krb5_decode_tagged_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.krb5_tagged_data = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c",,%u,%zu,{%x},%u\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"n_elem %d\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c" = 0 [toklen=%u]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.krb5_tagged_data**, i32*, i32, i64, i32**, i32*)* @rxrpc_krb5_decode_tagged_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxrpc_krb5_decode_tagged_array(%struct.krb5_tagged_data** %0, i32* %1, i32 %2, i64 %3, i32** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.krb5_tagged_data**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.krb5_tagged_data*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.krb5_tagged_data** %0, %struct.krb5_tagged_data*** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i32** %4, i32*** %12, align 8
  store i32* %5, i32** %13, align 8
  %20 = load i32**, i32*** %12, align 8
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %15, align 8
  %22 = load i32*, i32** %13, align 8
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %16, align 4
  %24 = load i32, i32* %16, align 4
  %25 = icmp ult i32 %24, 4
  br i1 %25, label %26, label %29

26:                                               ; preds = %6
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %105

29:                                               ; preds = %6
  %30 = load i32, i32* %10, align 4
  %31 = load i64, i64* %11, align 8
  %32 = load i32*, i32** %15, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ntohl(i32 %34)
  %36 = load i32, i32* %16, align 4
  %37 = call i32 @_enter(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %30, i64 %31, i32 %35, i32 %36)
  %38 = load i32*, i32** %15, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %15, align 8
  %40 = load i32, i32* %38, align 4
  %41 = call i32 @ntohl(i32 %40)
  store i32 %41, i32* %17, align 4
  %42 = load i32, i32* %16, align 4
  %43 = sub i32 %42, 4
  store i32 %43, i32* %16, align 4
  %44 = load i32, i32* %17, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ugt i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %29
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %7, align 4
  br label %105

50:                                               ; preds = %29
  %51 = load i32, i32* %17, align 4
  %52 = load i32*, i32** %9, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* %17, align 4
  %54 = icmp ugt i32 %53, 0
  br i1 %54, label %55, label %98

55:                                               ; preds = %50
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* %17, align 4
  %58 = add i32 %57, 1
  %59 = mul i32 %58, 4
  %60 = icmp ule i32 %56, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %7, align 4
  br label %105

64:                                               ; preds = %55
  %65 = load i32, i32* %17, align 4
  %66 = call i32 @_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %17, align 4
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = call %struct.krb5_tagged_data* @kcalloc(i32 %67, i32 4, i32 %68)
  store %struct.krb5_tagged_data* %69, %struct.krb5_tagged_data** %14, align 8
  %70 = load %struct.krb5_tagged_data*, %struct.krb5_tagged_data** %14, align 8
  %71 = icmp ne %struct.krb5_tagged_data* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %64
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %7, align 4
  br label %105

75:                                               ; preds = %64
  %76 = load %struct.krb5_tagged_data*, %struct.krb5_tagged_data** %14, align 8
  %77 = load %struct.krb5_tagged_data**, %struct.krb5_tagged_data*** %8, align 8
  store %struct.krb5_tagged_data* %76, %struct.krb5_tagged_data** %77, align 8
  store i32 0, i32* %18, align 4
  br label %78

78:                                               ; preds = %94, %75
  %79 = load i32, i32* %18, align 4
  %80 = load i32, i32* %17, align 4
  %81 = icmp ult i32 %79, %80
  br i1 %81, label %82, label %97

82:                                               ; preds = %78
  %83 = load %struct.krb5_tagged_data*, %struct.krb5_tagged_data** %14, align 8
  %84 = load i32, i32* %18, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.krb5_tagged_data, %struct.krb5_tagged_data* %83, i64 %85
  %87 = load i64, i64* %11, align 8
  %88 = call i32 @rxrpc_krb5_decode_tagged_data(%struct.krb5_tagged_data* %86, i64 %87, i32** %15, i32* %16)
  store i32 %88, i32* %19, align 4
  %89 = load i32, i32* %19, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %82
  %92 = load i32, i32* %19, align 4
  store i32 %92, i32* %7, align 4
  br label %105

93:                                               ; preds = %82
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %18, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %18, align 4
  br label %78

97:                                               ; preds = %78
  br label %98

98:                                               ; preds = %97, %50
  %99 = load i32*, i32** %15, align 8
  %100 = load i32**, i32*** %12, align 8
  store i32* %99, i32** %100, align 8
  %101 = load i32, i32* %16, align 4
  %102 = load i32*, i32** %13, align 8
  store i32 %101, i32* %102, align 4
  %103 = load i32, i32* %16, align 4
  %104 = call i32 @_leave(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  store i32 0, i32* %7, align 4
  br label %105

105:                                              ; preds = %98, %91, %72, %61, %47, %26
  %106 = load i32, i32* %7, align 4
  ret i32 %106
}

declare dso_local i32 @_enter(i8*, i32, i64, i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @_debug(i8*, i32) #1

declare dso_local %struct.krb5_tagged_data* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @rxrpc_krb5_decode_tagged_data(%struct.krb5_tagged_data*, i64, i32**, i32*) #1

declare dso_local i32 @_leave(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
