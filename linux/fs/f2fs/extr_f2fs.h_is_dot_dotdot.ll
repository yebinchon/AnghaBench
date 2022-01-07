; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_f2fs.h_is_dot_dotdot.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_f2fs.h_is_dot_dotdot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qstr = type { i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qstr*)* @is_dot_dotdot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_dot_dotdot(%struct.qstr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qstr*, align 8
  store %struct.qstr* %0, %struct.qstr** %3, align 8
  %4 = load %struct.qstr*, %struct.qstr** %3, align 8
  %5 = getelementptr inbounds %struct.qstr, %struct.qstr* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = load %struct.qstr*, %struct.qstr** %3, align 8
  %10 = getelementptr inbounds %struct.qstr, %struct.qstr* %9, i32 0, i32 1
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 46
  br i1 %15, label %16, label %17

16:                                               ; preds = %8
  store i32 1, i32* %2, align 4
  br label %40

17:                                               ; preds = %8, %1
  %18 = load %struct.qstr*, %struct.qstr** %3, align 8
  %19 = getelementptr inbounds %struct.qstr, %struct.qstr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %39

22:                                               ; preds = %17
  %23 = load %struct.qstr*, %struct.qstr** %3, align 8
  %24 = getelementptr inbounds %struct.qstr, %struct.qstr* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 46
  br i1 %29, label %30, label %39

30:                                               ; preds = %22
  %31 = load %struct.qstr*, %struct.qstr** %3, align 8
  %32 = getelementptr inbounds %struct.qstr, %struct.qstr* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 46
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  store i32 1, i32* %2, align 4
  br label %40

39:                                               ; preds = %30, %22, %17
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %38, %16
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
