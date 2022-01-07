; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_quota_v2.c_v2_get_next_id.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_quota_v2.c_v2_get_next_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.kqid = type { i32 }
%struct.quota_info = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.kqid*)* @v2_get_next_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v2_get_next_id(%struct.super_block* %0, %struct.kqid* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.kqid*, align 8
  %5 = alloca %struct.quota_info*, align 8
  %6 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.kqid* %1, %struct.kqid** %4, align 8
  %7 = load %struct.super_block*, %struct.super_block** %3, align 8
  %8 = call %struct.quota_info* @sb_dqopt(%struct.super_block* %7)
  store %struct.quota_info* %8, %struct.quota_info** %5, align 8
  %9 = load %struct.quota_info*, %struct.quota_info** %5, align 8
  %10 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %9, i32 0, i32 0
  %11 = call i32 @down_read(i32* %10)
  %12 = load %struct.super_block*, %struct.super_block** %3, align 8
  %13 = load %struct.kqid*, %struct.kqid** %4, align 8
  %14 = getelementptr inbounds %struct.kqid, %struct.kqid* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.TYPE_2__* @sb_dqinfo(%struct.super_block* %12, i32 %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.kqid*, %struct.kqid** %4, align 8
  %20 = call i32 @qtree_get_next_id(i32 %18, %struct.kqid* %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.quota_info*, %struct.quota_info** %5, align 8
  %22 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %21, i32 0, i32 0
  %23 = call i32 @up_read(i32* %22)
  %24 = load i32, i32* %6, align 4
  ret i32 %24
}

declare dso_local %struct.quota_info* @sb_dqopt(%struct.super_block*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @qtree_get_next_id(i32, %struct.kqid*) #1

declare dso_local %struct.TYPE_2__* @sb_dqinfo(%struct.super_block*, i32) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
