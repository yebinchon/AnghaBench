; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_sysfs.c_batadv_store_bool_attr.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_sysfs.c_batadv_store_bool_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"%s: Invalid parameter received: %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"%s: Changing from: %s to: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.net_device*, i8*, i32*, i32*)* @batadv_store_bool_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_store_bool_attr(i8* %0, i64 %1, %struct.net_device* %2, i8* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store %struct.net_device* %2, %struct.net_device** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 -1, i32* %14, align 4
  %15 = load i32*, i32** %13, align 8
  store i32 0, i32* %15, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = load i64, i64* %9, align 8
  %18 = sub i64 %17, 1
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 10
  br i1 %22, label %23, label %28

23:                                               ; preds = %6
  %24 = load i8*, i8** %8, align 8
  %25 = load i64, i64* %9, align 8
  %26 = sub i64 %25, 1
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  store i8 0, i8* %27, align 1
  br label %28

28:                                               ; preds = %23, %6
  %29 = load i8*, i8** %8, align 8
  %30 = call i64 @strncmp(i8* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 2)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %28
  %33 = load i8*, i8** %8, align 8
  %34 = call i64 @strncmp(i8* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i8*, i8** %8, align 8
  %38 = call i64 @strncmp(i8* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 8)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36, %32, %28
  store i32 1, i32* %14, align 4
  br label %41

41:                                               ; preds = %40, %36
  %42 = load i8*, i8** %8, align 8
  %43 = call i64 @strncmp(i8* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 2)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %41
  %46 = load i8*, i8** %8, align 8
  %47 = call i64 @strncmp(i8* %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 8)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load i8*, i8** %8, align 8
  %51 = call i64 @strncmp(i8* %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 9)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49, %45, %41
  store i32 0, i32* %14, align 4
  br label %54

54:                                               ; preds = %53, %49
  %55 = load i32, i32* %14, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load %struct.net_device*, %struct.net_device** %10, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = call i32 (%struct.net_device*, i8*, i8*, i8*, ...) @batadv_info(%struct.net_device* %58, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8* %59, i8* %60)
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %7, align 4
  br label %91

64:                                               ; preds = %54
  %65 = load i32*, i32** %12, align 8
  %66 = call i32 @atomic_read(i32* %65)
  %67 = load i32, i32* %14, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i64, i64* %9, align 8
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %7, align 4
  br label %91

72:                                               ; preds = %64
  %73 = load %struct.net_device*, %struct.net_device** %10, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = load i32*, i32** %12, align 8
  %76 = call i32 @atomic_read(i32* %75)
  %77 = icmp eq i32 %76, 1
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)
  %80 = load i32, i32* %14, align 4
  %81 = icmp eq i32 %80, 1
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)
  %84 = call i32 (%struct.net_device*, i8*, i8*, i8*, ...) @batadv_info(%struct.net_device* %73, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* %74, i8* %79, i8* %83)
  %85 = load i32*, i32** %13, align 8
  store i32 1, i32* %85, align 4
  %86 = load i32*, i32** %12, align 8
  %87 = load i32, i32* %14, align 4
  %88 = call i32 @atomic_set(i32* %86, i32 %87)
  %89 = load i64, i64* %9, align 8
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %7, align 4
  br label %91

91:                                               ; preds = %72, %69, %57
  %92 = load i32, i32* %7, align 4
  ret i32 %92
}

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @batadv_info(%struct.net_device*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
