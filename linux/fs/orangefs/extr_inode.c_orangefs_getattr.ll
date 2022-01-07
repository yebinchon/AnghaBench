; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_inode.c_orangefs_getattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_inode.c_orangefs_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.kstat = type { i32, i32, i32 }

@GOSSIP_INODE_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"orangefs_getattr: called on %pd mask %u\0A\00", align 1
@STATX_SIZE = common dso_local global i32 0, align 4
@ORANGEFS_GETATTR_SIZE = common dso_local global i32 0, align 4
@STATX_ATTR_IMMUTABLE = common dso_local global i32 0, align 4
@STATX_ATTR_APPEND = common dso_local global i32 0, align 4
@S_IMMUTABLE = common dso_local global i32 0, align 4
@S_APPEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @orangefs_getattr(%struct.path* %0, %struct.kstat* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.path*, align 8
  %6 = alloca %struct.kstat*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  store %struct.path* %0, %struct.path** %5, align 8
  store %struct.kstat* %1, %struct.kstat** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.path*, %struct.path** %5, align 8
  %12 = getelementptr inbounds %struct.path, %struct.path* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.inode*, %struct.inode** %14, align 8
  store %struct.inode* %15, %struct.inode** %10, align 8
  %16 = load i32, i32* @GOSSIP_INODE_DEBUG, align 4
  %17 = load %struct.path*, %struct.path** %5, align 8
  %18 = getelementptr inbounds %struct.path, %struct.path* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @gossip_debug(i32 %16, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), %struct.TYPE_2__* %19, i32 %20)
  %22 = load %struct.inode*, %struct.inode** %10, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @STATX_SIZE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* @ORANGEFS_GETATTR_SIZE, align 4
  br label %30

29:                                               ; preds = %4
  br label %30

30:                                               ; preds = %29, %27
  %31 = phi i32 [ %28, %27 ], [ 0, %29 ]
  %32 = call i32 @orangefs_inode_getattr(%struct.inode* %22, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %82

35:                                               ; preds = %30
  %36 = load %struct.inode*, %struct.inode** %10, align 8
  %37 = load %struct.kstat*, %struct.kstat** %6, align 8
  %38 = call i32 @generic_fillattr(%struct.inode* %36, %struct.kstat* %37)
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @STATX_SIZE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %35
  %44 = load i32, i32* @STATX_SIZE, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.kstat*, %struct.kstat** %6, align 8
  %47 = getelementptr inbounds %struct.kstat, %struct.kstat* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, %45
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %43, %35
  %51 = load i32, i32* @STATX_ATTR_IMMUTABLE, align 4
  %52 = load i32, i32* @STATX_ATTR_APPEND, align 4
  %53 = or i32 %51, %52
  %54 = load %struct.kstat*, %struct.kstat** %6, align 8
  %55 = getelementptr inbounds %struct.kstat, %struct.kstat* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.inode*, %struct.inode** %10, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @S_IMMUTABLE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %50
  %63 = load i32, i32* @STATX_ATTR_IMMUTABLE, align 4
  %64 = load %struct.kstat*, %struct.kstat** %6, align 8
  %65 = getelementptr inbounds %struct.kstat, %struct.kstat* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %62, %50
  %69 = load %struct.inode*, %struct.inode** %10, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @S_APPEND, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %68
  %76 = load i32, i32* @STATX_ATTR_APPEND, align 4
  %77 = load %struct.kstat*, %struct.kstat** %6, align 8
  %78 = getelementptr inbounds %struct.kstat, %struct.kstat* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %75, %68
  br label %82

82:                                               ; preds = %81, %30
  %83 = load i32, i32* %9, align 4
  ret i32 %83
}

declare dso_local i32 @gossip_debug(i32, i8*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @orangefs_inode_getattr(%struct.inode*, i32) #1

declare dso_local i32 @generic_fillattr(%struct.inode*, %struct.kstat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
