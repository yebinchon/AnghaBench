; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.h_fill_node_footer_blkaddr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.h_fill_node_footer_blkaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.f2fs_checkpoint = type { i32 }
%struct.f2fs_node = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@CP_CRC_RECOVERY_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, i32)* @fill_node_footer_blkaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_node_footer_blkaddr(%struct.page* %0, i32 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.f2fs_checkpoint*, align 8
  %6 = alloca %struct.f2fs_node*, align 8
  %7 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.page*, %struct.page** %3, align 8
  %9 = call i32 @F2FS_P_SB(%struct.page* %8)
  %10 = call %struct.f2fs_checkpoint* @F2FS_CKPT(i32 %9)
  store %struct.f2fs_checkpoint* %10, %struct.f2fs_checkpoint** %5, align 8
  %11 = load %struct.page*, %struct.page** %3, align 8
  %12 = call %struct.f2fs_node* @F2FS_NODE(%struct.page* %11)
  store %struct.f2fs_node* %12, %struct.f2fs_node** %6, align 8
  %13 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %5, align 8
  %14 = call i32 @cur_cp_version(%struct.f2fs_checkpoint* %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %5, align 8
  %16 = load i32, i32* @CP_CRC_RECOVERY_FLAG, align 4
  %17 = call i64 @__is_set_ckpt_flags(%struct.f2fs_checkpoint* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %5, align 8
  %21 = call i32 @cur_cp_crc(%struct.f2fs_checkpoint* %20)
  %22 = shl i32 %21, 32
  %23 = load i32, i32* %7, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %19, %2
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @cpu_to_le64(i32 %26)
  %28 = load %struct.f2fs_node*, %struct.f2fs_node** %6, align 8
  %29 = getelementptr inbounds %struct.f2fs_node, %struct.f2fs_node* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @cpu_to_le32(i32 %31)
  %33 = load %struct.f2fs_node*, %struct.f2fs_node** %6, align 8
  %34 = getelementptr inbounds %struct.f2fs_node, %struct.f2fs_node* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 4
  ret void
}

declare dso_local %struct.f2fs_checkpoint* @F2FS_CKPT(i32) #1

declare dso_local i32 @F2FS_P_SB(%struct.page*) #1

declare dso_local %struct.f2fs_node* @F2FS_NODE(%struct.page*) #1

declare dso_local i32 @cur_cp_version(%struct.f2fs_checkpoint*) #1

declare dso_local i64 @__is_set_ckpt_flags(%struct.f2fs_checkpoint*, i32) #1

declare dso_local i32 @cur_cp_crc(%struct.f2fs_checkpoint*) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
