; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.h_is_recoverable_dnode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.h_is_recoverable_dnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.f2fs_checkpoint = type { i32 }

@CP_NOCRC_RECOVERY_FLAG = common dso_local global i32 0, align 4
@CP_CRC_RECOVERY_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*)* @is_recoverable_dnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_recoverable_dnode(%struct.page* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.f2fs_checkpoint*, align 8
  %5 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %3, align 8
  %6 = load %struct.page*, %struct.page** %3, align 8
  %7 = call i32 @F2FS_P_SB(%struct.page* %6)
  %8 = call %struct.f2fs_checkpoint* @F2FS_CKPT(i32 %7)
  store %struct.f2fs_checkpoint* %8, %struct.f2fs_checkpoint** %4, align 8
  %9 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %4, align 8
  %10 = call i32 @cur_cp_version(%struct.f2fs_checkpoint* %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %4, align 8
  %12 = load i32, i32* @CP_NOCRC_RECOVERY_FLAG, align 4
  %13 = call i64 @__is_set_ckpt_flags(%struct.f2fs_checkpoint* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  %17 = shl i32 %16, 32
  %18 = load %struct.page*, %struct.page** %3, align 8
  %19 = call i32 @cpver_of_node(%struct.page* %18)
  %20 = shl i32 %19, 32
  %21 = icmp eq i32 %17, %20
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %2, align 4
  br label %40

23:                                               ; preds = %1
  %24 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %4, align 8
  %25 = load i32, i32* @CP_CRC_RECOVERY_FLAG, align 4
  %26 = call i64 @__is_set_ckpt_flags(%struct.f2fs_checkpoint* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %4, align 8
  %30 = call i32 @cur_cp_crc(%struct.f2fs_checkpoint* %29)
  %31 = shl i32 %30, 32
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %28, %23
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.page*, %struct.page** %3, align 8
  %37 = call i32 @cpver_of_node(%struct.page* %36)
  %38 = icmp eq i32 %35, %37
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %34, %15
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.f2fs_checkpoint* @F2FS_CKPT(i32) #1

declare dso_local i32 @F2FS_P_SB(%struct.page*) #1

declare dso_local i32 @cur_cp_version(%struct.f2fs_checkpoint*) #1

declare dso_local i64 @__is_set_ckpt_flags(%struct.f2fs_checkpoint*, i32) #1

declare dso_local i32 @cpver_of_node(%struct.page*) #1

declare dso_local i32 @cur_cp_crc(%struct.f2fs_checkpoint*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
