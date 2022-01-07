; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_gateway_common.c_batadv_parse_throughput.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_gateway_common.c_batadv_parse_throughput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"mbit\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"kbit\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Invalid throughput speed for %s: %s\0A\00", align 1
@U64_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Throughput speed for %s too large: %s\0A\00", align 1
@U32_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @batadv_parse_throughput(%struct.net_device* %0, i8* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 129, i32* %10, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 @strlen(i8* %14)
  %16 = icmp sgt i32 %15, 4
  br i1 %16, label %17, label %38

17:                                               ; preds = %4
  %18 = load i8*, i8** %7, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %18, i64 %21
  %23 = getelementptr inbounds i8, i8* %22, i64 -4
  store i8* %23, i8** %12, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = call i64 @strncasecmp(i8* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  store i32 128, i32* %10, align 4
  br label %28

28:                                               ; preds = %27, %17
  %29 = load i8*, i8** %12, align 8
  %30 = call i64 @strncasecmp(i8* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %10, align 4
  %34 = icmp eq i32 %33, 128
  br i1 %34, label %35, label %37

35:                                               ; preds = %32, %28
  %36 = load i8*, i8** %12, align 8
  store i8 0, i8* %36, align 1
  br label %37

37:                                               ; preds = %35, %32
  br label %38

38:                                               ; preds = %37, %4
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @kstrtou64(i8* %39, i32 10, i32* %11)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.net_device*, %struct.net_device** %6, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @batadv_err(%struct.net_device* %44, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %45, i8* %46)
  store i32 0, i32* %5, align 4
  br label %79

48:                                               ; preds = %38
  %49 = load i32, i32* %10, align 4
  switch i32 %49, label %64 [
    i32 128, label %50
    i32 129, label %63
  ]

50:                                               ; preds = %48
  %51 = load i32, i32* @U64_MAX, align 4
  %52 = sdiv i32 %51, 10
  %53 = load i32, i32* %11, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load %struct.net_device*, %struct.net_device** %6, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @batadv_err(%struct.net_device* %56, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %57, i8* %58)
  store i32 0, i32* %5, align 4
  br label %79

60:                                               ; preds = %50
  %61 = load i32, i32* %11, align 4
  %62 = mul nsw i32 %61, 10
  store i32 %62, i32* %11, align 4
  br label %67

63:                                               ; preds = %48
  br label %64

64:                                               ; preds = %48, %63
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @div_u64(i32 %65, i32 100)
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %64, %60
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* @U32_MAX, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = load %struct.net_device*, %struct.net_device** %6, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = call i32 @batadv_err(%struct.net_device* %72, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %73, i8* %74)
  store i32 0, i32* %5, align 4
  br label %79

76:                                               ; preds = %67
  %77 = load i32, i32* %11, align 4
  %78 = load i32*, i32** %9, align 8
  store i32 %77, i32* %78, align 4
  store i32 1, i32* %5, align 4
  br label %79

79:                                               ; preds = %76, %71, %55, %43
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @kstrtou64(i8*, i32, i32*) #1

declare dso_local i32 @batadv_err(%struct.net_device*, i8*, i8*, i8*) #1

declare dso_local i32 @div_u64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
