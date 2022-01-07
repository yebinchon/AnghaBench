; ModuleID = '/home/carl/AnghaBench/linux/fs/hugetlbfs/extr_inode.c_huge_pagevec_release.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hugetlbfs/extr_inode.c_huge_pagevec_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pagevec = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pagevec*)* @huge_pagevec_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @huge_pagevec_release(%struct.pagevec* %0) #0 {
  %2 = alloca %struct.pagevec*, align 8
  %3 = alloca i32, align 4
  store %struct.pagevec* %0, %struct.pagevec** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %18, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.pagevec*, %struct.pagevec** %2, align 8
  %7 = call i32 @pagevec_count(%struct.pagevec* %6)
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %9, label %21

9:                                                ; preds = %4
  %10 = load %struct.pagevec*, %struct.pagevec** %2, align 8
  %11 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @put_page(i32 %16)
  br label %18

18:                                               ; preds = %9
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  br label %4

21:                                               ; preds = %4
  %22 = load %struct.pagevec*, %struct.pagevec** %2, align 8
  %23 = call i32 @pagevec_reinit(%struct.pagevec* %22)
  ret void
}

declare dso_local i32 @pagevec_count(%struct.pagevec*) #1

declare dso_local i32 @put_page(i32) #1

declare dso_local i32 @pagevec_reinit(%struct.pagevec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
