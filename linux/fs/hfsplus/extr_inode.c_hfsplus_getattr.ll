; ModuleID = '/home/carl/AnghaBench/linux/fs/hfsplus/extr_inode.c_hfsplus_getattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfsplus/extr_inode.c_hfsplus_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i32 }
%struct.kstat = type { i32, i32 }
%struct.inode = type { i32 }
%struct.hfsplus_inode_info = type { i32 }

@S_APPEND = common dso_local global i32 0, align 4
@STATX_ATTR_APPEND = common dso_local global i32 0, align 4
@S_IMMUTABLE = common dso_local global i32 0, align 4
@STATX_ATTR_IMMUTABLE = common dso_local global i32 0, align 4
@HFSPLUS_FLG_NODUMP = common dso_local global i32 0, align 4
@STATX_ATTR_NODUMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfsplus_getattr(%struct.path* %0, %struct.kstat* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.path*, align 8
  %6 = alloca %struct.kstat*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.hfsplus_inode_info*, align 8
  store %struct.path* %0, %struct.path** %5, align 8
  store %struct.kstat* %1, %struct.kstat** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.path*, %struct.path** %5, align 8
  %12 = getelementptr inbounds %struct.path, %struct.path* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.inode* @d_inode(i32 %13)
  store %struct.inode* %14, %struct.inode** %9, align 8
  %15 = load %struct.inode*, %struct.inode** %9, align 8
  %16 = call %struct.hfsplus_inode_info* @HFSPLUS_I(%struct.inode* %15)
  store %struct.hfsplus_inode_info* %16, %struct.hfsplus_inode_info** %10, align 8
  %17 = load %struct.inode*, %struct.inode** %9, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @S_APPEND, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %4
  %24 = load i32, i32* @STATX_ATTR_APPEND, align 4
  %25 = load %struct.kstat*, %struct.kstat** %6, align 8
  %26 = getelementptr inbounds %struct.kstat, %struct.kstat* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %23, %4
  %30 = load %struct.inode*, %struct.inode** %9, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @S_IMMUTABLE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load i32, i32* @STATX_ATTR_IMMUTABLE, align 4
  %38 = load %struct.kstat*, %struct.kstat** %6, align 8
  %39 = getelementptr inbounds %struct.kstat, %struct.kstat* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %36, %29
  %43 = load %struct.hfsplus_inode_info*, %struct.hfsplus_inode_info** %10, align 8
  %44 = getelementptr inbounds %struct.hfsplus_inode_info, %struct.hfsplus_inode_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @HFSPLUS_FLG_NODUMP, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %42
  %50 = load i32, i32* @STATX_ATTR_NODUMP, align 4
  %51 = load %struct.kstat*, %struct.kstat** %6, align 8
  %52 = getelementptr inbounds %struct.kstat, %struct.kstat* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %49, %42
  %56 = load i32, i32* @STATX_ATTR_APPEND, align 4
  %57 = load i32, i32* @STATX_ATTR_IMMUTABLE, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @STATX_ATTR_NODUMP, align 4
  %60 = or i32 %58, %59
  %61 = load %struct.kstat*, %struct.kstat** %6, align 8
  %62 = getelementptr inbounds %struct.kstat, %struct.kstat* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load %struct.inode*, %struct.inode** %9, align 8
  %66 = load %struct.kstat*, %struct.kstat** %6, align 8
  %67 = call i32 @generic_fillattr(%struct.inode* %65, %struct.kstat* %66)
  ret i32 0
}

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local %struct.hfsplus_inode_info* @HFSPLUS_I(%struct.inode*) #1

declare dso_local i32 @generic_fillattr(%struct.inode*, %struct.kstat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
