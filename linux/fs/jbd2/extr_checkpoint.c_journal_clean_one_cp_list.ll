; ModuleID = '/home/carl/AnghaBench/linux/fs/jbd2/extr_checkpoint.c_journal_clean_one_cp_list.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jbd2/extr_checkpoint.c_journal_clean_one_cp_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.journal_head = type { %struct.journal_head*, %struct.journal_head* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.journal_head*, i32)* @journal_clean_one_cp_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @journal_clean_one_cp_list(%struct.journal_head* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.journal_head*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.journal_head*, align 8
  %7 = alloca %struct.journal_head*, align 8
  %8 = alloca i32, align 4
  store %struct.journal_head* %0, %struct.journal_head** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.journal_head*, %struct.journal_head** %4, align 8
  store %struct.journal_head* %9, %struct.journal_head** %7, align 8
  %10 = load %struct.journal_head*, %struct.journal_head** %4, align 8
  %11 = icmp ne %struct.journal_head* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %49

13:                                               ; preds = %2
  %14 = load %struct.journal_head*, %struct.journal_head** %4, align 8
  %15 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %14, i32 0, i32 1
  %16 = load %struct.journal_head*, %struct.journal_head** %15, align 8
  store %struct.journal_head* %16, %struct.journal_head** %6, align 8
  br label %17

17:                                               ; preds = %44, %13
  %18 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  store %struct.journal_head* %18, %struct.journal_head** %4, align 8
  %19 = load %struct.journal_head*, %struct.journal_head** %4, align 8
  %20 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %19, i32 0, i32 0
  %21 = load %struct.journal_head*, %struct.journal_head** %20, align 8
  store %struct.journal_head* %21, %struct.journal_head** %7, align 8
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load %struct.journal_head*, %struct.journal_head** %4, align 8
  %26 = call i32 @__try_to_free_cp_buf(%struct.journal_head* %25)
  store i32 %26, i32* %8, align 4
  br label %31

27:                                               ; preds = %17
  %28 = load %struct.journal_head*, %struct.journal_head** %4, align 8
  %29 = call i32 @__jbd2_journal_remove_checkpoint(%struct.journal_head* %28)
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %27, %24
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %49

35:                                               ; preds = %31
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 1, i32* %3, align 4
  br label %49

39:                                               ; preds = %35
  %40 = call i64 (...) @need_resched()
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %49

43:                                               ; preds = %39
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.journal_head*, %struct.journal_head** %4, align 8
  %46 = load %struct.journal_head*, %struct.journal_head** %6, align 8
  %47 = icmp ne %struct.journal_head* %45, %46
  br i1 %47, label %17, label %48

48:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %42, %38, %34, %12
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @__try_to_free_cp_buf(%struct.journal_head*) #1

declare dso_local i32 @__jbd2_journal_remove_checkpoint(%struct.journal_head*) #1

declare dso_local i64 @need_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
