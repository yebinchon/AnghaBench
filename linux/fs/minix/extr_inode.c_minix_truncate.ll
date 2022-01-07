; ModuleID = '/home/carl/AnghaBench/linux/fs/minix/extr_inode.c_minix_truncate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/minix/extr_inode.c_minix_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }

@MINIX_V1 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @minix_truncate(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %3 = load %struct.inode*, %struct.inode** %2, align 8
  %4 = getelementptr inbounds %struct.inode, %struct.inode* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i64 @S_ISREG(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %1
  %9 = load %struct.inode*, %struct.inode** %2, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @S_ISDIR(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %8
  %15 = load %struct.inode*, %struct.inode** %2, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @S_ISLNK(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  br label %32

21:                                               ; preds = %14, %8, %1
  %22 = load %struct.inode*, %struct.inode** %2, align 8
  %23 = call i64 @INODE_VERSION(%struct.inode* %22)
  %24 = load i64, i64* @MINIX_V1, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.inode*, %struct.inode** %2, align 8
  %28 = call i32 @V1_minix_truncate(%struct.inode* %27)
  br label %32

29:                                               ; preds = %21
  %30 = load %struct.inode*, %struct.inode** %2, align 8
  %31 = call i32 @V2_minix_truncate(%struct.inode* %30)
  br label %32

32:                                               ; preds = %20, %29, %26
  ret void
}

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i64 @INODE_VERSION(%struct.inode*) #1

declare dso_local i32 @V1_minix_truncate(%struct.inode*) #1

declare dso_local i32 @V2_minix_truncate(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
