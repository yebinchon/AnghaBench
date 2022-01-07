; ModuleID = '/home/carl/AnghaBench/linux/net/strparser/extr_strparser.c_strp_data_ready.c'
source_filename = "/home/carl/AnghaBench/linux/net/strparser/extr_strparser.c_strp_data_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strparser = type { i64, i32, i32, i64, i32 }

@strp_wq = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @strp_data_ready(%struct.strparser* %0) #0 {
  %2 = alloca %struct.strparser*, align 8
  store %struct.strparser* %0, %struct.strparser** %2, align 8
  %3 = load %struct.strparser*, %struct.strparser** %2, align 8
  %4 = getelementptr inbounds %struct.strparser, %struct.strparser* %3, i32 0, i32 4
  %5 = load i32, i32* %4, align 8
  %6 = call i64 @unlikely(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load %struct.strparser*, %struct.strparser** %2, align 8
  %10 = getelementptr inbounds %struct.strparser, %struct.strparser* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8, %1
  br label %50

14:                                               ; preds = %8
  %15 = load %struct.strparser*, %struct.strparser** %2, align 8
  %16 = getelementptr inbounds %struct.strparser, %struct.strparser* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @sock_owned_by_user_nocheck(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = load i32, i32* @strp_wq, align 4
  %22 = load %struct.strparser*, %struct.strparser** %2, align 8
  %23 = getelementptr inbounds %struct.strparser, %struct.strparser* %22, i32 0, i32 1
  %24 = call i32 @queue_work(i32 %21, i32* %23)
  br label %50

25:                                               ; preds = %14
  %26 = load %struct.strparser*, %struct.strparser** %2, align 8
  %27 = getelementptr inbounds %struct.strparser, %struct.strparser* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load %struct.strparser*, %struct.strparser** %2, align 8
  %32 = call i64 @strp_peek_len(%struct.strparser* %31)
  %33 = load %struct.strparser*, %struct.strparser** %2, align 8
  %34 = getelementptr inbounds %struct.strparser, %struct.strparser* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %50

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %25
  %40 = load %struct.strparser*, %struct.strparser** %2, align 8
  %41 = call i32 @strp_read_sock(%struct.strparser* %40)
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load i32, i32* @strp_wq, align 4
  %47 = load %struct.strparser*, %struct.strparser** %2, align 8
  %48 = getelementptr inbounds %struct.strparser, %struct.strparser* %47, i32 0, i32 1
  %49 = call i32 @queue_work(i32 %46, i32* %48)
  br label %50

50:                                               ; preds = %13, %20, %37, %45, %39
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @sock_owned_by_user_nocheck(i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i64 @strp_peek_len(%struct.strparser*) #1

declare dso_local i32 @strp_read_sock(%struct.strparser*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
