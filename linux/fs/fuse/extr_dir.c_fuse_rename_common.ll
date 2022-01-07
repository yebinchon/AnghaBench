; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_dir.c_fuse_rename_common.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_dir.c_fuse_rename_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_6__*, i8* }
%struct.TYPE_6__ = type { i64, %struct.fuse_rename2_in* }
%struct.fuse_rename2_in = type { i32, i8* }
%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.fuse_rename2_in* }
%struct.fuse_conn = type { i32 }

@args = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@RENAME_EXCHANGE = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32, i32, i64)* @fuse_rename_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_rename_common(%struct.inode* %0, %struct.dentry* %1, %struct.inode* %2, %struct.dentry* %3, i32 %4, i32 %5, i64 %6) #0 {
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.fuse_rename2_in, align 8
  %17 = alloca %struct.fuse_conn*, align 8
  store %struct.inode* %0, %struct.inode** %8, align 8
  store %struct.dentry* %1, %struct.dentry** %9, align 8
  store %struct.inode* %2, %struct.inode** %10, align 8
  store %struct.dentry* %3, %struct.dentry** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i64 %6, i64* %14, align 8
  %18 = load %struct.inode*, %struct.inode** %8, align 8
  %19 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %18)
  store %struct.fuse_conn* %19, %struct.fuse_conn** %17, align 8
  %20 = call i32 @FUSE_ARGS(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 @args)
  %21 = load i64, i64* %14, align 8
  %22 = call i32 @memset(%struct.fuse_rename2_in* %16, i32 0, i64 %21)
  %23 = load %struct.inode*, %struct.inode** %10, align 8
  %24 = call i8* @get_node_id(%struct.inode* %23)
  %25 = getelementptr inbounds %struct.fuse_rename2_in, %struct.fuse_rename2_in* %16, i32 0, i32 1
  store i8* %24, i8** %25, align 8
  %26 = load i32, i32* %12, align 4
  %27 = getelementptr inbounds %struct.fuse_rename2_in, %struct.fuse_rename2_in* %16, i32 0, i32 0
  store i32 %26, i32* %27, align 8
  %28 = load i32, i32* %13, align 4
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 0), align 8
  %29 = load %struct.inode*, %struct.inode** %8, align 8
  %30 = call i8* @get_node_id(%struct.inode* %29)
  store i8* %30, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 3), align 8
  store i32 3, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 1), align 4
  %31 = load i64, i64* %14, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 2), align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store i64 %31, i64* %34, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 2), align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  store %struct.fuse_rename2_in* %16, %struct.fuse_rename2_in** %37, align 8
  %38 = load %struct.dentry*, %struct.dentry** %9, align 8
  %39 = getelementptr inbounds %struct.dentry, %struct.dentry* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 2), align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  store i64 %43, i64* %46, align 8
  %47 = load %struct.dentry*, %struct.dentry** %9, align 8
  %48 = getelementptr inbounds %struct.dentry, %struct.dentry* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load %struct.fuse_rename2_in*, %struct.fuse_rename2_in** %49, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 2), align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i64 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  store %struct.fuse_rename2_in* %50, %struct.fuse_rename2_in** %53, align 8
  %54 = load %struct.dentry*, %struct.dentry** %11, align 8
  %55 = getelementptr inbounds %struct.dentry, %struct.dentry* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 2), align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i64 2
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i64 %59, i64* %62, align 8
  %63 = load %struct.dentry*, %struct.dentry** %11, align 8
  %64 = getelementptr inbounds %struct.dentry, %struct.dentry* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load %struct.fuse_rename2_in*, %struct.fuse_rename2_in** %65, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @args, i32 0, i32 2), align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i64 2
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  store %struct.fuse_rename2_in* %66, %struct.fuse_rename2_in** %69, align 8
  %70 = load %struct.fuse_conn*, %struct.fuse_conn** %17, align 8
  %71 = call i32 @fuse_simple_request(%struct.fuse_conn* %70, %struct.TYPE_8__* @args)
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* %15, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %120, label %74

74:                                               ; preds = %7
  %75 = load %struct.dentry*, %struct.dentry** %9, align 8
  %76 = call i32 @d_inode(%struct.dentry* %75)
  %77 = call i32 @fuse_invalidate_attr(i32 %76)
  %78 = load %struct.dentry*, %struct.dentry** %9, align 8
  %79 = call i32 @d_inode(%struct.dentry* %78)
  %80 = call i32 @fuse_update_ctime(i32 %79)
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* @RENAME_EXCHANGE, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %74
  %86 = load %struct.dentry*, %struct.dentry** %11, align 8
  %87 = call i32 @d_inode(%struct.dentry* %86)
  %88 = call i32 @fuse_invalidate_attr(i32 %87)
  %89 = load %struct.dentry*, %struct.dentry** %11, align 8
  %90 = call i32 @d_inode(%struct.dentry* %89)
  %91 = call i32 @fuse_update_ctime(i32 %90)
  br label %92

92:                                               ; preds = %85, %74
  %93 = load %struct.inode*, %struct.inode** %8, align 8
  %94 = call i32 @fuse_dir_changed(%struct.inode* %93)
  %95 = load %struct.inode*, %struct.inode** %8, align 8
  %96 = load %struct.inode*, %struct.inode** %10, align 8
  %97 = icmp ne %struct.inode* %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %92
  %99 = load %struct.inode*, %struct.inode** %10, align 8
  %100 = call i32 @fuse_dir_changed(%struct.inode* %99)
  br label %101

101:                                              ; preds = %98, %92
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* @RENAME_EXCHANGE, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %119, label %106

106:                                              ; preds = %101
  %107 = load %struct.dentry*, %struct.dentry** %11, align 8
  %108 = call i64 @d_really_is_positive(%struct.dentry* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %106
  %111 = load %struct.dentry*, %struct.dentry** %11, align 8
  %112 = call i32 @d_inode(%struct.dentry* %111)
  %113 = call i32 @fuse_invalidate_attr(i32 %112)
  %114 = load %struct.dentry*, %struct.dentry** %11, align 8
  %115 = call i32 @fuse_invalidate_entry_cache(%struct.dentry* %114)
  %116 = load %struct.dentry*, %struct.dentry** %11, align 8
  %117 = call i32 @d_inode(%struct.dentry* %116)
  %118 = call i32 @fuse_update_ctime(i32 %117)
  br label %119

119:                                              ; preds = %110, %106, %101
  br label %136

120:                                              ; preds = %7
  %121 = load i32, i32* %15, align 4
  %122 = load i32, i32* @EINTR, align 4
  %123 = sub nsw i32 0, %122
  %124 = icmp eq i32 %121, %123
  br i1 %124, label %125, label %135

125:                                              ; preds = %120
  %126 = load %struct.dentry*, %struct.dentry** %9, align 8
  %127 = call i32 @fuse_invalidate_entry(%struct.dentry* %126)
  %128 = load %struct.dentry*, %struct.dentry** %11, align 8
  %129 = call i64 @d_really_is_positive(%struct.dentry* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %125
  %132 = load %struct.dentry*, %struct.dentry** %11, align 8
  %133 = call i32 @fuse_invalidate_entry(%struct.dentry* %132)
  br label %134

134:                                              ; preds = %131, %125
  br label %135

135:                                              ; preds = %134, %120
  br label %136

136:                                              ; preds = %135, %119
  %137 = load i32, i32* %15, align 4
  ret i32 %137
}

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local i32 @FUSE_ARGS(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8) #1

declare dso_local i32 @memset(%struct.fuse_rename2_in*, i32, i64) #1

declare dso_local i8* @get_node_id(%struct.inode*) #1

declare dso_local i32 @fuse_simple_request(%struct.fuse_conn*, %struct.TYPE_8__*) #1

declare dso_local i32 @fuse_invalidate_attr(i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i32 @fuse_update_ctime(i32) #1

declare dso_local i32 @fuse_dir_changed(%struct.inode*) #1

declare dso_local i64 @d_really_is_positive(%struct.dentry*) #1

declare dso_local i32 @fuse_invalidate_entry_cache(%struct.dentry*) #1

declare dso_local i32 @fuse_invalidate_entry(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
