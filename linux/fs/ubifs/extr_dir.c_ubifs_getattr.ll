; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_dir.c_ubifs_getattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_dir.c_ubifs_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { i32 }
%struct.kstat = type { i32, i32, i32, i32, i32 }
%struct.inode = type { i32 }
%struct.ubifs_inode = type { i32, i32, i32, i32 }

@UBIFS_APPEND_FL = common dso_local global i32 0, align 4
@STATX_ATTR_APPEND = common dso_local global i32 0, align 4
@UBIFS_COMPR_FL = common dso_local global i32 0, align 4
@STATX_ATTR_COMPRESSED = common dso_local global i32 0, align 4
@UBIFS_CRYPT_FL = common dso_local global i32 0, align 4
@STATX_ATTR_ENCRYPTED = common dso_local global i32 0, align 4
@UBIFS_IMMUTABLE_FL = common dso_local global i32 0, align 4
@STATX_ATTR_IMMUTABLE = common dso_local global i32 0, align 4
@UBIFS_BLOCK_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_getattr(%struct.path* %0, %struct.kstat* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.path*, align 8
  %6 = alloca %struct.kstat*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.ubifs_inode*, align 8
  store %struct.path* %0, %struct.path** %5, align 8
  store %struct.kstat* %1, %struct.kstat** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.path*, %struct.path** %5, align 8
  %13 = getelementptr inbounds %struct.path, %struct.path* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.inode* @d_inode(i32 %14)
  store %struct.inode* %15, %struct.inode** %10, align 8
  %16 = load %struct.inode*, %struct.inode** %10, align 8
  %17 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %16)
  store %struct.ubifs_inode* %17, %struct.ubifs_inode** %11, align 8
  %18 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %19 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %18, i32 0, i32 3
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %22 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @UBIFS_APPEND_FL, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %4
  %28 = load i32, i32* @STATX_ATTR_APPEND, align 4
  %29 = load %struct.kstat*, %struct.kstat** %6, align 8
  %30 = getelementptr inbounds %struct.kstat, %struct.kstat* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %27, %4
  %34 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %35 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @UBIFS_COMPR_FL, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = load i32, i32* @STATX_ATTR_COMPRESSED, align 4
  %42 = load %struct.kstat*, %struct.kstat** %6, align 8
  %43 = getelementptr inbounds %struct.kstat, %struct.kstat* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %40, %33
  %47 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %48 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @UBIFS_CRYPT_FL, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %46
  %54 = load i32, i32* @STATX_ATTR_ENCRYPTED, align 4
  %55 = load %struct.kstat*, %struct.kstat** %6, align 8
  %56 = getelementptr inbounds %struct.kstat, %struct.kstat* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %53, %46
  %60 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %61 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @UBIFS_IMMUTABLE_FL, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %59
  %67 = load i32, i32* @STATX_ATTR_IMMUTABLE, align 4
  %68 = load %struct.kstat*, %struct.kstat** %6, align 8
  %69 = getelementptr inbounds %struct.kstat, %struct.kstat* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %66, %59
  %73 = load i32, i32* @STATX_ATTR_APPEND, align 4
  %74 = load i32, i32* @STATX_ATTR_COMPRESSED, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @STATX_ATTR_ENCRYPTED, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @STATX_ATTR_IMMUTABLE, align 4
  %79 = or i32 %77, %78
  %80 = load %struct.kstat*, %struct.kstat** %6, align 8
  %81 = getelementptr inbounds %struct.kstat, %struct.kstat* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  %84 = load %struct.inode*, %struct.inode** %10, align 8
  %85 = load %struct.kstat*, %struct.kstat** %6, align 8
  %86 = call i32 @generic_fillattr(%struct.inode* %84, %struct.kstat* %85)
  %87 = load i32, i32* @UBIFS_BLOCK_SIZE, align 4
  %88 = load %struct.kstat*, %struct.kstat** %6, align 8
  %89 = getelementptr inbounds %struct.kstat, %struct.kstat* %88, i32 0, i32 4
  store i32 %87, i32* %89, align 4
  %90 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %91 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.kstat*, %struct.kstat** %6, align 8
  %94 = getelementptr inbounds %struct.kstat, %struct.kstat* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 4
  %95 = load %struct.inode*, %struct.inode** %10, align 8
  %96 = getelementptr inbounds %struct.inode, %struct.inode* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @S_ISREG(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %116

100:                                              ; preds = %72
  %101 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %102 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %9, align 4
  %104 = load %struct.kstat*, %struct.kstat** %6, align 8
  %105 = getelementptr inbounds %struct.kstat, %struct.kstat* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 %107, %106
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* @UBIFS_BLOCK_SIZE, align 4
  %111 = call i32 @ALIGN(i32 %109, i32 %110)
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %9, align 4
  %113 = ashr i32 %112, 9
  %114 = load %struct.kstat*, %struct.kstat** %6, align 8
  %115 = getelementptr inbounds %struct.kstat, %struct.kstat* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 4
  br label %119

116:                                              ; preds = %72
  %117 = load %struct.kstat*, %struct.kstat** %6, align 8
  %118 = getelementptr inbounds %struct.kstat, %struct.kstat* %117, i32 0, i32 3
  store i32 0, i32* %118, align 4
  br label %119

119:                                              ; preds = %116, %100
  %120 = load %struct.ubifs_inode*, %struct.ubifs_inode** %11, align 8
  %121 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %120, i32 0, i32 3
  %122 = call i32 @mutex_unlock(i32* %121)
  ret i32 0
}

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local %struct.ubifs_inode* @ubifs_inode(%struct.inode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @generic_fillattr(%struct.inode*, %struct.kstat*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
