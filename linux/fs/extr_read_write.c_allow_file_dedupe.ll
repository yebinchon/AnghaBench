; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_read_write.c_allow_file_dedupe.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_read_write.c_allow_file_dedupe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.TYPE_3__ = type { i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@MAY_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @allow_file_dedupe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allow_file_dedupe(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  %4 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %5 = call i64 @capable(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %33

8:                                                ; preds = %1
  %9 = load %struct.file*, %struct.file** %3, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @FMODE_WRITE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  store i32 1, i32* %2, align 4
  br label %33

16:                                               ; preds = %8
  %17 = call i32 (...) @current_fsuid()
  %18 = load %struct.file*, %struct.file** %3, align 8
  %19 = call %struct.TYPE_3__* @file_inode(%struct.file* %18)
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @uid_eq(i32 %17, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store i32 1, i32* %2, align 4
  br label %33

25:                                               ; preds = %16
  %26 = load %struct.file*, %struct.file** %3, align 8
  %27 = call %struct.TYPE_3__* @file_inode(%struct.file* %26)
  %28 = load i32, i32* @MAY_WRITE, align 4
  %29 = call i32 @inode_permission(%struct.TYPE_3__* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  store i32 1, i32* %2, align 4
  br label %33

32:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %31, %24, %15, %7
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i64 @capable(i32) #1

declare dso_local i64 @uid_eq(i32, i32) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local %struct.TYPE_3__* @file_inode(%struct.file*) #1

declare dso_local i32 @inode_permission(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
