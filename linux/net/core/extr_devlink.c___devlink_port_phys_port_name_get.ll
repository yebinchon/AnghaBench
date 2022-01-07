; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c___devlink_port_phys_port_name_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c___devlink_port_phys_port_name_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink_port = type { %struct.devlink_port_attrs }
%struct.devlink_port_attrs = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"p%u\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"p%us%u\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"pf%u\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"pf%uvf%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devlink_port*, i8*, i64)* @__devlink_port_phys_port_name_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__devlink_port_phys_port_name_get(%struct.devlink_port* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.devlink_port*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.devlink_port_attrs*, align 8
  %9 = alloca i32, align 4
  store %struct.devlink_port* %0, %struct.devlink_port** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.devlink_port*, %struct.devlink_port** %5, align 8
  %11 = getelementptr inbounds %struct.devlink_port, %struct.devlink_port* %10, i32 0, i32 0
  store %struct.devlink_port_attrs* %11, %struct.devlink_port_attrs** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.devlink_port_attrs*, %struct.devlink_port_attrs** %8, align 8
  %13 = getelementptr inbounds %struct.devlink_port_attrs, %struct.devlink_port_attrs* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @EOPNOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %82

19:                                               ; preds = %3
  %20 = load %struct.devlink_port_attrs*, %struct.devlink_port_attrs** %8, align 8
  %21 = getelementptr inbounds %struct.devlink_port_attrs, %struct.devlink_port_attrs* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %73 [
    i32 128, label %23
    i32 132, label %49
    i32 131, label %49
    i32 130, label %53
    i32 129, label %61
  ]

23:                                               ; preds = %19
  %24 = load %struct.devlink_port_attrs*, %struct.devlink_port_attrs** %8, align 8
  %25 = getelementptr inbounds %struct.devlink_port_attrs, %struct.devlink_port_attrs* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %23
  %29 = load i8*, i8** %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load %struct.devlink_port_attrs*, %struct.devlink_port_attrs** %8, align 8
  %32 = getelementptr inbounds %struct.devlink_port_attrs, %struct.devlink_port_attrs* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i8*, i64, i8*, i32, ...) @snprintf(i8* %29, i64 %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %34)
  store i32 %35, i32* %9, align 4
  br label %48

36:                                               ; preds = %23
  %37 = load i8*, i8** %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load %struct.devlink_port_attrs*, %struct.devlink_port_attrs** %8, align 8
  %40 = getelementptr inbounds %struct.devlink_port_attrs, %struct.devlink_port_attrs* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.devlink_port_attrs*, %struct.devlink_port_attrs** %8, align 8
  %44 = getelementptr inbounds %struct.devlink_port_attrs, %struct.devlink_port_attrs* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i8*, i64, i8*, i32, ...) @snprintf(i8* %37, i64 %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %46)
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %36, %28
  br label %73

49:                                               ; preds = %19, %19
  %50 = call i32 @WARN_ON(i32 1)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %82

53:                                               ; preds = %19
  %54 = load i8*, i8** %6, align 8
  %55 = load i64, i64* %7, align 8
  %56 = load %struct.devlink_port_attrs*, %struct.devlink_port_attrs** %8, align 8
  %57 = getelementptr inbounds %struct.devlink_port_attrs, %struct.devlink_port_attrs* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i8*, i64, i8*, i32, ...) @snprintf(i8* %54, i64 %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  store i32 %60, i32* %9, align 4
  br label %73

61:                                               ; preds = %19
  %62 = load i8*, i8** %6, align 8
  %63 = load i64, i64* %7, align 8
  %64 = load %struct.devlink_port_attrs*, %struct.devlink_port_attrs** %8, align 8
  %65 = getelementptr inbounds %struct.devlink_port_attrs, %struct.devlink_port_attrs* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.devlink_port_attrs*, %struct.devlink_port_attrs** %8, align 8
  %69 = getelementptr inbounds %struct.devlink_port_attrs, %struct.devlink_port_attrs* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i8*, i64, i8*, i32, ...) @snprintf(i8* %62, i64 %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %67, i32 %71)
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %19, %61, %53, %48
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* %7, align 8
  %77 = icmp uge i64 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %82

81:                                               ; preds = %73
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %81, %78, %49, %16
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @snprintf(i8*, i64, i8*, i32, ...) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
