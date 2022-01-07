; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namei.c_may_open.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namei.c_may_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { %struct.dentry* }
%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@ELOOP = common dso_local global i32 0, align 4
@MAY_WRITE = common dso_local global i32 0, align 4
@EISDIR = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@MAY_OPEN = common dso_local global i32 0, align 4
@O_ACCMODE = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@O_NOATIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.path*, i32, i32)* @may_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @may_open(%struct.path* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.path*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  store %struct.path* %0, %struct.path** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.path*, %struct.path** %5, align 8
  %12 = getelementptr inbounds %struct.path, %struct.path* %11, i32 0, i32 0
  %13 = load %struct.dentry*, %struct.dentry** %12, align 8
  store %struct.dentry* %13, %struct.dentry** %8, align 8
  %14 = load %struct.dentry*, %struct.dentry** %8, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 0
  %16 = load %struct.inode*, %struct.inode** %15, align 8
  store %struct.inode* %16, %struct.inode** %9, align 8
  %17 = load %struct.inode*, %struct.inode** %9, align 8
  %18 = icmp ne %struct.inode* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOENT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %103

22:                                               ; preds = %3
  %23 = load %struct.inode*, %struct.inode** %9, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @S_IFMT, align 4
  %27 = and i32 %25, %26
  switch i32 %27, label %53 [
    i32 129, label %28
    i32 131, label %31
    i32 133, label %40
    i32 132, label %40
    i32 130, label %48
    i32 128, label %48
  ]

28:                                               ; preds = %22
  %29 = load i32, i32* @ELOOP, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %103

31:                                               ; preds = %22
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @MAY_WRITE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @EISDIR, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %103

39:                                               ; preds = %31
  br label %53

40:                                               ; preds = %22, %22
  %41 = load %struct.path*, %struct.path** %5, align 8
  %42 = call i32 @may_open_dev(%struct.path* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* @EACCES, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %103

47:                                               ; preds = %40
  br label %48

48:                                               ; preds = %22, %22, %47
  %49 = load i32, i32* @O_TRUNC, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %7, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %22, %48, %39
  %54 = load %struct.inode*, %struct.inode** %9, align 8
  %55 = load i32, i32* @MAY_OPEN, align 4
  %56 = load i32, i32* %6, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @inode_permission(%struct.inode* %54, i32 %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %4, align 4
  br label %103

63:                                               ; preds = %53
  %64 = load %struct.inode*, %struct.inode** %9, align 8
  %65 = call i64 @IS_APPEND(%struct.inode* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %90

67:                                               ; preds = %63
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @O_ACCMODE, align 4
  %70 = and i32 %68, %69
  %71 = load i32, i32* @O_RDONLY, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %67
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @O_APPEND, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %73
  %79 = load i32, i32* @EPERM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %103

81:                                               ; preds = %73, %67
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @O_TRUNC, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load i32, i32* @EPERM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %103

89:                                               ; preds = %81
  br label %90

90:                                               ; preds = %89, %63
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @O_NOATIME, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %90
  %96 = load %struct.inode*, %struct.inode** %9, align 8
  %97 = call i32 @inode_owner_or_capable(%struct.inode* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %95
  %100 = load i32, i32* @EPERM, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %4, align 4
  br label %103

102:                                              ; preds = %95, %90
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %102, %99, %86, %78, %61, %44, %36, %28, %19
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @may_open_dev(%struct.path*) #1

declare dso_local i32 @inode_permission(%struct.inode*, i32) #1

declare dso_local i64 @IS_APPEND(%struct.inode*) #1

declare dso_local i32 @inode_owner_or_capable(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
