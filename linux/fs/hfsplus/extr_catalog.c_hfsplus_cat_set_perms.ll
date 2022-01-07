; ModuleID = '/home/carl/AnghaBench/linux/fs/hfsplus/extr_catalog.c_hfsplus_cat_set_perms.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfsplus/extr_catalog.c_hfsplus_cat_set_perms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32 }
%struct.hfsplus_perm = type { i8*, i8*, i8*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@S_IMMUTABLE = common dso_local global i32 0, align 4
@HFSPLUS_FLG_IMMUTABLE = common dso_local global i32 0, align 4
@S_APPEND = common dso_local global i32 0, align 4
@HFSPLUS_FLG_APPEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfsplus_cat_set_perms(%struct.inode* %0, %struct.hfsplus_perm* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.hfsplus_perm*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.hfsplus_perm* %1, %struct.hfsplus_perm** %4, align 8
  %5 = load %struct.inode*, %struct.inode** %3, align 8
  %6 = getelementptr inbounds %struct.inode, %struct.inode* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @S_IMMUTABLE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load i32, i32* @HFSPLUS_FLG_IMMUTABLE, align 4
  %13 = load %struct.hfsplus_perm*, %struct.hfsplus_perm** %4, align 8
  %14 = getelementptr inbounds %struct.hfsplus_perm, %struct.hfsplus_perm* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 8
  br label %24

17:                                               ; preds = %2
  %18 = load i32, i32* @HFSPLUS_FLG_IMMUTABLE, align 4
  %19 = xor i32 %18, -1
  %20 = load %struct.hfsplus_perm*, %struct.hfsplus_perm** %4, align 8
  %21 = getelementptr inbounds %struct.hfsplus_perm, %struct.hfsplus_perm* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 8
  br label %24

24:                                               ; preds = %17, %11
  %25 = load %struct.inode*, %struct.inode** %3, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @S_APPEND, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load i32, i32* @HFSPLUS_FLG_APPEND, align 4
  %33 = load %struct.hfsplus_perm*, %struct.hfsplus_perm** %4, align 8
  %34 = getelementptr inbounds %struct.hfsplus_perm, %struct.hfsplus_perm* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  br label %44

37:                                               ; preds = %24
  %38 = load i32, i32* @HFSPLUS_FLG_APPEND, align 4
  %39 = xor i32 %38, -1
  %40 = load %struct.hfsplus_perm*, %struct.hfsplus_perm** %4, align 8
  %41 = getelementptr inbounds %struct.hfsplus_perm, %struct.hfsplus_perm* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 8
  br label %44

44:                                               ; preds = %37, %31
  %45 = load %struct.inode*, %struct.inode** %3, align 8
  %46 = call %struct.TYPE_2__* @HFSPLUS_I(%struct.inode* %45)
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.hfsplus_perm*, %struct.hfsplus_perm** %4, align 8
  %50 = getelementptr inbounds %struct.hfsplus_perm, %struct.hfsplus_perm* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 4
  %51 = load %struct.inode*, %struct.inode** %3, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @cpu_to_be16(i32 %53)
  %55 = load %struct.hfsplus_perm*, %struct.hfsplus_perm** %4, align 8
  %56 = getelementptr inbounds %struct.hfsplus_perm, %struct.hfsplus_perm* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 8
  %57 = load %struct.inode*, %struct.inode** %3, align 8
  %58 = call i32 @i_uid_read(%struct.inode* %57)
  %59 = call i8* @cpu_to_be32(i32 %58)
  %60 = load %struct.hfsplus_perm*, %struct.hfsplus_perm** %4, align 8
  %61 = getelementptr inbounds %struct.hfsplus_perm, %struct.hfsplus_perm* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  %62 = load %struct.inode*, %struct.inode** %3, align 8
  %63 = call i32 @i_gid_read(%struct.inode* %62)
  %64 = call i8* @cpu_to_be32(i32 %63)
  %65 = load %struct.hfsplus_perm*, %struct.hfsplus_perm** %4, align 8
  %66 = getelementptr inbounds %struct.hfsplus_perm, %struct.hfsplus_perm* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  %67 = load %struct.inode*, %struct.inode** %3, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @S_ISREG(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %44
  %73 = load %struct.inode*, %struct.inode** %3, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @cpu_to_be32(i32 %75)
  %77 = load %struct.hfsplus_perm*, %struct.hfsplus_perm** %4, align 8
  %78 = getelementptr inbounds %struct.hfsplus_perm, %struct.hfsplus_perm* %77, i32 0, i32 0
  store i8* %76, i8** %78, align 8
  br label %102

79:                                               ; preds = %44
  %80 = load %struct.inode*, %struct.inode** %3, align 8
  %81 = getelementptr inbounds %struct.inode, %struct.inode* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @S_ISBLK(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %79
  %86 = load %struct.inode*, %struct.inode** %3, align 8
  %87 = getelementptr inbounds %struct.inode, %struct.inode* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @S_ISCHR(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %85, %79
  %92 = load %struct.inode*, %struct.inode** %3, align 8
  %93 = getelementptr inbounds %struct.inode, %struct.inode* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i8* @cpu_to_be32(i32 %94)
  %96 = load %struct.hfsplus_perm*, %struct.hfsplus_perm** %4, align 8
  %97 = getelementptr inbounds %struct.hfsplus_perm, %struct.hfsplus_perm* %96, i32 0, i32 0
  store i8* %95, i8** %97, align 8
  br label %101

98:                                               ; preds = %85
  %99 = load %struct.hfsplus_perm*, %struct.hfsplus_perm** %4, align 8
  %100 = getelementptr inbounds %struct.hfsplus_perm, %struct.hfsplus_perm* %99, i32 0, i32 0
  store i8* null, i8** %100, align 8
  br label %101

101:                                              ; preds = %98, %91
  br label %102

102:                                              ; preds = %101, %72
  ret void
}

declare dso_local %struct.TYPE_2__* @HFSPLUS_I(%struct.inode*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @i_uid_read(%struct.inode*) #1

declare dso_local i32 @i_gid_read(%struct.inode*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
