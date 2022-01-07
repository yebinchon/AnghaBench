; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_allow_key_dist.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_allow_key_dist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smp_chan = type { i32 }

@SMP_DIST_ENC_KEY = common dso_local global i32 0, align 4
@SMP_CMD_ENCRYPT_INFO = common dso_local global i32 0, align 4
@SMP_DIST_ID_KEY = common dso_local global i32 0, align 4
@SMP_CMD_IDENT_INFO = common dso_local global i32 0, align 4
@SMP_DIST_SIGN = common dso_local global i32 0, align 4
@SMP_CMD_SIGN_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smp_chan*)* @smp_allow_key_dist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smp_allow_key_dist(%struct.smp_chan* %0) #0 {
  %2 = alloca %struct.smp_chan*, align 8
  store %struct.smp_chan* %0, %struct.smp_chan** %2, align 8
  %3 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %4 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @SMP_DIST_ENC_KEY, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %11 = load i32, i32* @SMP_CMD_ENCRYPT_INFO, align 4
  %12 = call i32 @SMP_ALLOW_CMD(%struct.smp_chan* %10, i32 %11)
  br label %37

13:                                               ; preds = %1
  %14 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %15 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SMP_DIST_ID_KEY, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %22 = load i32, i32* @SMP_CMD_IDENT_INFO, align 4
  %23 = call i32 @SMP_ALLOW_CMD(%struct.smp_chan* %21, i32 %22)
  br label %36

24:                                               ; preds = %13
  %25 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %26 = getelementptr inbounds %struct.smp_chan, %struct.smp_chan* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @SMP_DIST_SIGN, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load %struct.smp_chan*, %struct.smp_chan** %2, align 8
  %33 = load i32, i32* @SMP_CMD_SIGN_INFO, align 4
  %34 = call i32 @SMP_ALLOW_CMD(%struct.smp_chan* %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %24
  br label %36

36:                                               ; preds = %35, %20
  br label %37

37:                                               ; preds = %36, %9
  ret void
}

declare dso_local i32 @SMP_ALLOW_CMD(%struct.smp_chan*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
