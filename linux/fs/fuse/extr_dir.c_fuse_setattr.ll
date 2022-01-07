; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_dir.c_fuse_setattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_dir.c_fuse_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.iattr = type { i32, i32, %struct.file* }
%struct.file = type { i32 }
%struct.inode = type { i32 }
%struct.fuse_conn = type { i64, i32 }

@ATTR_FILE = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@ATTR_KILL_SUID = common dso_local global i32 0, align 4
@ATTR_KILL_SGID = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4
@S_ISUID = common dso_local global i32 0, align 4
@S_ISGID = common dso_local global i32 0, align 4
@S_IXGRP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.iattr*)* @fuse_setattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_setattr(%struct.dentry* %0, %struct.iattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.iattr*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.fuse_conn*, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.iattr* %1, %struct.iattr** %5, align 8
  %10 = load %struct.dentry*, %struct.dentry** %4, align 8
  %11 = call %struct.inode* @d_inode(%struct.dentry* %10)
  store %struct.inode* %11, %struct.inode** %6, align 8
  %12 = load %struct.inode*, %struct.inode** %6, align 8
  %13 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %12)
  store %struct.fuse_conn* %13, %struct.fuse_conn** %7, align 8
  %14 = load %struct.iattr*, %struct.iattr** %5, align 8
  %15 = getelementptr inbounds %struct.iattr, %struct.iattr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @ATTR_FILE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.iattr*, %struct.iattr** %5, align 8
  %22 = getelementptr inbounds %struct.iattr, %struct.iattr* %21, i32 0, i32 2
  %23 = load %struct.file*, %struct.file** %22, align 8
  br label %25

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %24, %20
  %26 = phi %struct.file* [ %23, %20 ], [ null, %24 ]
  store %struct.file* %26, %struct.file** %8, align 8
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %27)
  %29 = call i32 @fuse_allow_current_process(%struct.fuse_conn* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @EACCES, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %154

34:                                               ; preds = %25
  %35 = load %struct.iattr*, %struct.iattr** %5, align 8
  %36 = getelementptr inbounds %struct.iattr, %struct.iattr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @ATTR_KILL_SUID, align 4
  %39 = load i32, i32* @ATTR_KILL_SGID, align 4
  %40 = or i32 %38, %39
  %41 = and i32 %37, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %116

43:                                               ; preds = %34
  %44 = load i32, i32* @ATTR_KILL_SUID, align 4
  %45 = load i32, i32* @ATTR_KILL_SGID, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @ATTR_MODE, align 4
  %48 = or i32 %46, %47
  %49 = xor i32 %48, -1
  %50 = load %struct.iattr*, %struct.iattr** %5, align 8
  %51 = getelementptr inbounds %struct.iattr, %struct.iattr* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %55 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %115, label %58

58:                                               ; preds = %43
  %59 = load %struct.inode*, %struct.inode** %6, align 8
  %60 = load %struct.file*, %struct.file** %8, align 8
  %61 = call i32 @fuse_do_getattr(%struct.inode* %59, i32* null, %struct.file* %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %3, align 4
  br label %154

66:                                               ; preds = %58
  %67 = load %struct.inode*, %struct.inode** %6, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.iattr*, %struct.iattr** %5, align 8
  %71 = getelementptr inbounds %struct.iattr, %struct.iattr* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.inode*, %struct.inode** %6, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @S_ISUID, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %66
  %79 = load i32, i32* @ATTR_MODE, align 4
  %80 = load %struct.iattr*, %struct.iattr** %5, align 8
  %81 = getelementptr inbounds %struct.iattr, %struct.iattr* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 8
  %84 = load i32, i32* @S_ISUID, align 4
  %85 = xor i32 %84, -1
  %86 = load %struct.iattr*, %struct.iattr** %5, align 8
  %87 = getelementptr inbounds %struct.iattr, %struct.iattr* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, %85
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %78, %66
  %91 = load %struct.inode*, %struct.inode** %6, align 8
  %92 = getelementptr inbounds %struct.inode, %struct.inode* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @S_ISGID, align 4
  %95 = load i32, i32* @S_IXGRP, align 4
  %96 = or i32 %94, %95
  %97 = and i32 %93, %96
  %98 = load i32, i32* @S_ISGID, align 4
  %99 = load i32, i32* @S_IXGRP, align 4
  %100 = or i32 %98, %99
  %101 = icmp eq i32 %97, %100
  br i1 %101, label %102, label %114

102:                                              ; preds = %90
  %103 = load i32, i32* @ATTR_MODE, align 4
  %104 = load %struct.iattr*, %struct.iattr** %5, align 8
  %105 = getelementptr inbounds %struct.iattr, %struct.iattr* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 8
  %108 = load i32, i32* @S_ISGID, align 4
  %109 = xor i32 %108, -1
  %110 = load %struct.iattr*, %struct.iattr** %5, align 8
  %111 = getelementptr inbounds %struct.iattr, %struct.iattr* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = and i32 %112, %109
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %102, %90
  br label %115

115:                                              ; preds = %114, %43
  br label %116

116:                                              ; preds = %115, %34
  %117 = load %struct.iattr*, %struct.iattr** %5, align 8
  %118 = getelementptr inbounds %struct.iattr, %struct.iattr* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %116
  store i32 0, i32* %3, align 4
  br label %154

122:                                              ; preds = %116
  %123 = load %struct.dentry*, %struct.dentry** %4, align 8
  %124 = load %struct.iattr*, %struct.iattr** %5, align 8
  %125 = load %struct.file*, %struct.file** %8, align 8
  %126 = call i32 @fuse_do_setattr(%struct.dentry* %123, %struct.iattr* %124, %struct.file* %125)
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %9, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %152, label %129

129:                                              ; preds = %122
  %130 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %131 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load %struct.inode*, %struct.inode** %6, align 8
  %136 = call i32 @forget_all_cached_acls(%struct.inode* %135)
  br label %137

137:                                              ; preds = %134, %129
  %138 = load %struct.dentry*, %struct.dentry** %4, align 8
  %139 = call i64 @d_is_dir(%struct.dentry* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %151

141:                                              ; preds = %137
  %142 = load %struct.iattr*, %struct.iattr** %5, align 8
  %143 = getelementptr inbounds %struct.iattr, %struct.iattr* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @ATTR_MODE, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %141
  %149 = load %struct.dentry*, %struct.dentry** %4, align 8
  %150 = call i32 @fuse_invalidate_entry_cache(%struct.dentry* %149)
  br label %151

151:                                              ; preds = %148, %141, %137
  br label %152

152:                                              ; preds = %151, %122
  %153 = load i32, i32* %9, align 4
  store i32 %153, i32* %3, align 4
  br label %154

154:                                              ; preds = %152, %121, %64, %31
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local i32 @fuse_allow_current_process(%struct.fuse_conn*) #1

declare dso_local i32 @fuse_do_getattr(%struct.inode*, i32*, %struct.file*) #1

declare dso_local i32 @fuse_do_setattr(%struct.dentry*, %struct.iattr*, %struct.file*) #1

declare dso_local i32 @forget_all_cached_acls(%struct.inode*) #1

declare dso_local i64 @d_is_dir(%struct.dentry*) #1

declare dso_local i32 @fuse_invalidate_entry_cache(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
