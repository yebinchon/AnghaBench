; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_attr.c_chgrp_ok.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_attr.c_chgrp_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@CAP_CHOWN = common dso_local global i32 0, align 4
@INVALID_GID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32)* @chgrp_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chgrp_ok(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = call i32 (...) @current_fsuid()
  %7 = load %struct.inode*, %struct.inode** %4, align 8
  %8 = getelementptr inbounds %struct.inode, %struct.inode* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @uid_eq(i32 %6, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @in_group_p(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.inode*, %struct.inode** %4, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @gid_eq(i32 %17, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16, %12
  store i32 1, i32* %3, align 4
  br label %48

24:                                               ; preds = %16, %2
  %25 = load %struct.inode*, %struct.inode** %4, align 8
  %26 = load i32, i32* @CAP_CHOWN, align 4
  %27 = call i64 @capable_wrt_inode_uidgid(%struct.inode* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  br label %48

30:                                               ; preds = %24
  %31 = load %struct.inode*, %struct.inode** %4, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @INVALID_GID, align 4
  %35 = call i64 @gid_eq(i32 %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %30
  %38 = load %struct.inode*, %struct.inode** %4, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @CAP_CHOWN, align 4
  %44 = call i64 @ns_capable(i32 %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  store i32 1, i32* %3, align 4
  br label %48

47:                                               ; preds = %37, %30
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %46, %29, %23
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i64 @uid_eq(i32, i32) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local i64 @in_group_p(i32) #1

declare dso_local i64 @gid_eq(i32, i32) #1

declare dso_local i64 @capable_wrt_inode_uidgid(%struct.inode*, i32) #1

declare dso_local i64 @ns_capable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
