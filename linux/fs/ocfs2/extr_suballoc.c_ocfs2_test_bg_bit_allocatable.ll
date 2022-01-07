; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_test_bg_bit_allocatable.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_suballoc.c_ocfs2_test_bg_bit_allocatable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i64 }
%struct.ocfs2_group_desc = type { i64 }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.buffer_head*, i32)* @ocfs2_test_bg_bit_allocatable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_test_bg_bit_allocatable(%struct.buffer_head* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocfs2_group_desc*, align 8
  %7 = alloca i32, align 4
  store %struct.buffer_head* %0, %struct.buffer_head** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %9 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.ocfs2_group_desc*
  store %struct.ocfs2_group_desc* %11, %struct.ocfs2_group_desc** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %6, align 8
  %14 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i64*
  %17 = call i64 @ocfs2_test_bit(i32 %12, i64* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %50

20:                                               ; preds = %2
  %21 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %22 = call i32 @buffer_jbd(%struct.buffer_head* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %50

25:                                               ; preds = %20
  %26 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %27 = call i32 @jbd_lock_bh_state(%struct.buffer_head* %26)
  %28 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %29 = call %struct.TYPE_2__* @bh2jh(%struct.buffer_head* %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.ocfs2_group_desc*
  store %struct.ocfs2_group_desc* %32, %struct.ocfs2_group_desc** %6, align 8
  %33 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %6, align 8
  %34 = icmp ne %struct.ocfs2_group_desc* %33, null
  br i1 %34, label %35, label %45

35:                                               ; preds = %25
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %6, align 8
  %38 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i64*
  %41 = call i64 @ocfs2_test_bit(i32 %36, i64* %40)
  %42 = icmp ne i64 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %7, align 4
  br label %46

45:                                               ; preds = %25
  store i32 1, i32* %7, align 4
  br label %46

46:                                               ; preds = %45, %35
  %47 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %48 = call i32 @jbd_unlock_bh_state(%struct.buffer_head* %47)
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %46, %24, %19
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @ocfs2_test_bit(i32, i64*) #1

declare dso_local i32 @buffer_jbd(%struct.buffer_head*) #1

declare dso_local i32 @jbd_lock_bh_state(%struct.buffer_head*) #1

declare dso_local %struct.TYPE_2__* @bh2jh(%struct.buffer_head*) #1

declare dso_local i32 @jbd_unlock_bh_state(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
