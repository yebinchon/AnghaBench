; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_clip.c_clip_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_clip.c_clip_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.clip_priv = type { i32, %struct.net_device*, i32 }

@clip_devs = common dso_local global %struct.net_device* null, align 8
@EEXIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@NET_NAME_UNKNOWN = common dso_local global i32 0, align 4
@clip_setup = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"atm%d\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"registered (net:%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @clip_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clip_create(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.clip_priv*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, -1
  br i1 %8, label %9, label %31

9:                                                ; preds = %1
  %10 = load %struct.net_device*, %struct.net_device** @clip_devs, align 8
  store %struct.net_device* %10, %struct.net_device** %4, align 8
  br label %11

11:                                               ; preds = %25, %9
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = icmp ne %struct.net_device* %12, null
  br i1 %13, label %14, label %30

14:                                               ; preds = %11
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call %struct.clip_priv* @PRIV(%struct.net_device* %15)
  %17 = getelementptr inbounds %struct.clip_priv, %struct.clip_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load i32, i32* @EEXIST, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %97

24:                                               ; preds = %14
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = call %struct.clip_priv* @PRIV(%struct.net_device* %26)
  %28 = getelementptr inbounds %struct.clip_priv, %struct.clip_priv* %27, i32 0, i32 1
  %29 = load %struct.net_device*, %struct.net_device** %28, align 8
  store %struct.net_device* %29, %struct.net_device** %4, align 8
  br label %11

30:                                               ; preds = %11
  br label %56

31:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  %32 = load %struct.net_device*, %struct.net_device** @clip_devs, align 8
  store %struct.net_device* %32, %struct.net_device** %4, align 8
  br label %33

33:                                               ; preds = %50, %31
  %34 = load %struct.net_device*, %struct.net_device** %4, align 8
  %35 = icmp ne %struct.net_device* %34, null
  br i1 %35, label %36, label %55

36:                                               ; preds = %33
  %37 = load %struct.net_device*, %struct.net_device** %4, align 8
  %38 = call %struct.clip_priv* @PRIV(%struct.net_device* %37)
  %39 = getelementptr inbounds %struct.clip_priv, %struct.clip_priv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = load %struct.net_device*, %struct.net_device** %4, align 8
  %45 = call %struct.clip_priv* @PRIV(%struct.net_device* %44)
  %46 = getelementptr inbounds %struct.clip_priv, %struct.clip_priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %43, %36
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.net_device*, %struct.net_device** %4, align 8
  %52 = call %struct.clip_priv* @PRIV(%struct.net_device* %51)
  %53 = getelementptr inbounds %struct.clip_priv, %struct.clip_priv* %52, i32 0, i32 1
  %54 = load %struct.net_device*, %struct.net_device** %53, align 8
  store %struct.net_device* %54, %struct.net_device** %4, align 8
  br label %33

55:                                               ; preds = %33
  br label %56

56:                                               ; preds = %55, %30
  %57 = load i32, i32* @NET_NAME_UNKNOWN, align 4
  %58 = load i32, i32* @clip_setup, align 4
  %59 = call %struct.net_device* @alloc_netdev(i32 24, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %58)
  store %struct.net_device* %59, %struct.net_device** %4, align 8
  %60 = load %struct.net_device*, %struct.net_device** %4, align 8
  %61 = icmp ne %struct.net_device* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %56
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %97

65:                                               ; preds = %56
  %66 = load %struct.net_device*, %struct.net_device** %4, align 8
  %67 = call %struct.clip_priv* @PRIV(%struct.net_device* %66)
  store %struct.clip_priv* %67, %struct.clip_priv** %5, align 8
  %68 = load %struct.net_device*, %struct.net_device** %4, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @sprintf(i32 %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load %struct.clip_priv*, %struct.clip_priv** %5, align 8
  %74 = getelementptr inbounds %struct.clip_priv, %struct.clip_priv* %73, i32 0, i32 2
  %75 = call i32 @spin_lock_init(i32* %74)
  %76 = load i32, i32* %3, align 4
  %77 = load %struct.clip_priv*, %struct.clip_priv** %5, align 8
  %78 = getelementptr inbounds %struct.clip_priv, %struct.clip_priv* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.net_device*, %struct.net_device** %4, align 8
  %80 = call i32 @register_netdev(%struct.net_device* %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %65
  %84 = load %struct.net_device*, %struct.net_device** %4, align 8
  %85 = call i32 @free_netdev(%struct.net_device* %84)
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %2, align 4
  br label %97

87:                                               ; preds = %65
  %88 = load %struct.net_device*, %struct.net_device** @clip_devs, align 8
  %89 = load %struct.clip_priv*, %struct.clip_priv** %5, align 8
  %90 = getelementptr inbounds %struct.clip_priv, %struct.clip_priv* %89, i32 0, i32 1
  store %struct.net_device* %88, %struct.net_device** %90, align 8
  %91 = load %struct.net_device*, %struct.net_device** %4, align 8
  store %struct.net_device* %91, %struct.net_device** @clip_devs, align 8
  %92 = load %struct.net_device*, %struct.net_device** %4, align 8
  %93 = getelementptr inbounds %struct.net_device, %struct.net_device* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* %3, align 4
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %87, %83, %62, %21
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local %struct.clip_priv* @PRIV(%struct.net_device*) #1

declare dso_local %struct.net_device* @alloc_netdev(i32, i8*, i32, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
