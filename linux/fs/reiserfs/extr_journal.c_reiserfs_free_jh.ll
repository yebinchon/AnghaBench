; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_reiserfs_free_jh.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_reiserfs_free_jh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { %struct.reiserfs_jh* }
%struct.reiserfs_jh = type { i32, i32* }

@nr_reiserfs_jh = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reiserfs_free_jh(%struct.buffer_head* %0) #0 {
  %2 = alloca %struct.buffer_head*, align 8
  %3 = alloca %struct.reiserfs_jh*, align 8
  store %struct.buffer_head* %0, %struct.buffer_head** %2, align 8
  %4 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %5 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %4, i32 0, i32 0
  %6 = load %struct.reiserfs_jh*, %struct.reiserfs_jh** %5, align 8
  store %struct.reiserfs_jh* %6, %struct.reiserfs_jh** %3, align 8
  %7 = load %struct.reiserfs_jh*, %struct.reiserfs_jh** %3, align 8
  %8 = icmp ne %struct.reiserfs_jh* %7, null
  br i1 %8, label %9, label %27

9:                                                ; preds = %1
  %10 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %11 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %10, i32 0, i32 0
  store %struct.reiserfs_jh* null, %struct.reiserfs_jh** %11, align 8
  %12 = load %struct.reiserfs_jh*, %struct.reiserfs_jh** %3, align 8
  %13 = getelementptr inbounds %struct.reiserfs_jh, %struct.reiserfs_jh* %12, i32 0, i32 1
  store i32* null, i32** %13, align 8
  %14 = load %struct.reiserfs_jh*, %struct.reiserfs_jh** %3, align 8
  %15 = getelementptr inbounds %struct.reiserfs_jh, %struct.reiserfs_jh* %14, i32 0, i32 0
  %16 = call i32 @list_del_init(i32* %15)
  %17 = load %struct.reiserfs_jh*, %struct.reiserfs_jh** %3, align 8
  %18 = call i32 @kfree(%struct.reiserfs_jh* %17)
  %19 = call i64 @atomic_read(i32* @nr_reiserfs_jh)
  %20 = icmp sle i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %9
  %22 = call i32 (...) @BUG()
  br label %23

23:                                               ; preds = %21, %9
  %24 = call i32 @atomic_dec(i32* @nr_reiserfs_jh)
  %25 = load %struct.buffer_head*, %struct.buffer_head** %2, align 8
  %26 = call i32 @put_bh(%struct.buffer_head* %25)
  br label %27

27:                                               ; preds = %23, %1
  ret void
}

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @kfree(%struct.reiserfs_jh*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @put_bh(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
