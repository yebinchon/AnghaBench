; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_quota_v2.c_v2_write_dquot.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_quota_v2.c_v2_write_dquot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dquot = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.quota_info = type { i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dquot*)* @v2_write_dquot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v2_write_dquot(%struct.dquot* %0) #0 {
  %2 = alloca %struct.dquot*, align 8
  %3 = alloca %struct.quota_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dquot* %0, %struct.dquot** %2, align 8
  %6 = load %struct.dquot*, %struct.dquot** %2, align 8
  %7 = getelementptr inbounds %struct.dquot, %struct.dquot* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.quota_info* @sb_dqopt(i32 %8)
  store %struct.quota_info* %9, %struct.quota_info** %3, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.dquot*, %struct.dquot** %2, align 8
  %11 = getelementptr inbounds %struct.dquot, %struct.dquot* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  %15 = load %struct.quota_info*, %struct.quota_info** %3, align 8
  %16 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %15, i32 0, i32 0
  %17 = call i32 @down_write(i32* %16)
  br label %22

18:                                               ; preds = %1
  %19 = load %struct.quota_info*, %struct.quota_info** %3, align 8
  %20 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %19, i32 0, i32 0
  %21 = call i32 @down_read(i32* %20)
  br label %22

22:                                               ; preds = %18, %14
  %23 = load %struct.dquot*, %struct.dquot** %2, align 8
  %24 = getelementptr inbounds %struct.dquot, %struct.dquot* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.dquot*, %struct.dquot** %2, align 8
  %27 = getelementptr inbounds %struct.dquot, %struct.dquot* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.TYPE_4__* @sb_dqinfo(i32 %25, i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.dquot*, %struct.dquot** %2, align 8
  %34 = call i32 @qtree_write_dquot(i32 %32, %struct.dquot* %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %22
  %38 = load %struct.quota_info*, %struct.quota_info** %3, align 8
  %39 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %38, i32 0, i32 0
  %40 = call i32 @up_write(i32* %39)
  br label %45

41:                                               ; preds = %22
  %42 = load %struct.quota_info*, %struct.quota_info** %3, align 8
  %43 = getelementptr inbounds %struct.quota_info, %struct.quota_info* %42, i32 0, i32 0
  %44 = call i32 @up_read(i32* %43)
  br label %45

45:                                               ; preds = %41, %37
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.quota_info* @sb_dqopt(i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @qtree_write_dquot(i32, %struct.dquot*) #1

declare dso_local %struct.TYPE_4__* @sb_dqinfo(i32, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
