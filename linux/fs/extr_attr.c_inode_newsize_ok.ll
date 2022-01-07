; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_attr.c_inode_newsize_ok.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_attr.c_inode_newsize_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@RLIMIT_FSIZE = common dso_local global i32 0, align 4
@RLIM_INFINITY = common dso_local global i64 0, align 8
@ETXTBSY = common dso_local global i32 0, align 4
@SIGXFSZ = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inode_newsize_ok(%struct.inode* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.inode*, %struct.inode** %4, align 8
  %8 = getelementptr inbounds %struct.inode, %struct.inode* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %33

12:                                               ; preds = %2
  %13 = load i32, i32* @RLIMIT_FSIZE, align 4
  %14 = call i64 @rlimit(i32 %13)
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @RLIM_INFINITY, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp ugt i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %42

23:                                               ; preds = %18, %12
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.inode*, %struct.inode** %4, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %24, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %46

32:                                               ; preds = %23
  br label %41

33:                                               ; preds = %2
  %34 = load %struct.inode*, %struct.inode** %4, align 8
  %35 = call i64 @IS_SWAPFILE(%struct.inode* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @ETXTBSY, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %49

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40, %32
  store i32 0, i32* %3, align 4
  br label %49

42:                                               ; preds = %22
  %43 = load i32, i32* @SIGXFSZ, align 4
  %44 = load i32, i32* @current, align 4
  %45 = call i32 @send_sig(i32 %43, i32 %44, i32 0)
  br label %46

46:                                               ; preds = %42, %31
  %47 = load i32, i32* @EFBIG, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %46, %41, %37
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i64 @rlimit(i32) #1

declare dso_local i64 @IS_SWAPFILE(%struct.inode*) #1

declare dso_local i32 @send_sig(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
