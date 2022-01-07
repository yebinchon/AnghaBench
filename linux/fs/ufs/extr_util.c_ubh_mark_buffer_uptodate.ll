; ModuleID = '/home/carl/AnghaBench/linux/fs/ufs/extr_util.c_ubh_mark_buffer_uptodate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ufs/extr_util.c_ubh_mark_buffer_uptodate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_buffer_head = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ubh_mark_buffer_uptodate(%struct.ufs_buffer_head* %0, i32 %1) #0 {
  %3 = alloca %struct.ufs_buffer_head*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ufs_buffer_head* %0, %struct.ufs_buffer_head** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %3, align 8
  %7 = icmp ne %struct.ufs_buffer_head* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %52

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %32

12:                                               ; preds = %9
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %28, %12
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %3, align 8
  %16 = getelementptr inbounds %struct.ufs_buffer_head, %struct.ufs_buffer_head* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ult i32 %14, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %13
  %20 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %3, align 8
  %21 = getelementptr inbounds %struct.ufs_buffer_head, %struct.ufs_buffer_head* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @set_buffer_uptodate(i32 %26)
  br label %28

28:                                               ; preds = %19
  %29 = load i32, i32* %5, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %13

31:                                               ; preds = %13
  br label %52

32:                                               ; preds = %9
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %48, %32
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %3, align 8
  %36 = getelementptr inbounds %struct.ufs_buffer_head, %struct.ufs_buffer_head* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ult i32 %34, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %33
  %40 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %3, align 8
  %41 = getelementptr inbounds %struct.ufs_buffer_head, %struct.ufs_buffer_head* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @clear_buffer_uptodate(i32 %46)
  br label %48

48:                                               ; preds = %39
  %49 = load i32, i32* %5, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %33

51:                                               ; preds = %33
  br label %52

52:                                               ; preds = %8, %51, %31
  ret void
}

declare dso_local i32 @set_buffer_uptodate(i32) #1

declare dso_local i32 @clear_buffer_uptodate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
