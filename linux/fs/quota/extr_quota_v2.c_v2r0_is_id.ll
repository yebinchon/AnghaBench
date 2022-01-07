; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_quota_v2.c_v2r0_is_id.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_quota_v2.c_v2r0_is_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dquot = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.v2r0_disk_dqblk = type { i32 }
%struct.qtree_mem_dqinfo = type { i32 }
%struct.TYPE_3__ = type { %struct.qtree_mem_dqinfo* }

@init_user_ns = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.dquot*)* @v2r0_is_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v2r0_is_id(i8* %0, %struct.dquot* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dquot*, align 8
  %6 = alloca %struct.v2r0_disk_dqblk*, align 8
  %7 = alloca %struct.qtree_mem_dqinfo*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.dquot* %1, %struct.dquot** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.v2r0_disk_dqblk*
  store %struct.v2r0_disk_dqblk* %9, %struct.v2r0_disk_dqblk** %6, align 8
  %10 = load %struct.dquot*, %struct.dquot** %5, align 8
  %11 = getelementptr inbounds %struct.dquot, %struct.dquot* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.dquot*, %struct.dquot** %5, align 8
  %14 = getelementptr inbounds %struct.dquot, %struct.dquot* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.TYPE_3__* @sb_dqinfo(i32 %12, i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %18, align 8
  store %struct.qtree_mem_dqinfo* %19, %struct.qtree_mem_dqinfo** %7, align 8
  %20 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %7, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i64 @qtree_entry_unused(%struct.qtree_mem_dqinfo* %20, i8* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %40

25:                                               ; preds = %2
  %26 = load %struct.dquot*, %struct.dquot** %5, align 8
  %27 = getelementptr inbounds %struct.dquot, %struct.dquot* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.v2r0_disk_dqblk*, %struct.v2r0_disk_dqblk** %6, align 8
  %31 = getelementptr inbounds %struct.v2r0_disk_dqblk, %struct.v2r0_disk_dqblk* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @le32_to_cpu(i32 %32)
  %34 = call i32 @make_kqid(i32* @init_user_ns, i32 %29, i32 %33)
  %35 = load %struct.dquot*, %struct.dquot** %5, align 8
  %36 = getelementptr inbounds %struct.dquot, %struct.dquot* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @qid_eq(i32 %34, i32 %38)
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %25, %24
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.TYPE_3__* @sb_dqinfo(i32, i32) #1

declare dso_local i64 @qtree_entry_unused(%struct.qtree_mem_dqinfo*, i8*) #1

declare dso_local i32 @qid_eq(i32, i32) #1

declare dso_local i32 @make_kqid(i32*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
