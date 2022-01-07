; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_orangefs-utils.c_copy_attributes_from_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_orangefs-utils.c_copy_attributes_from_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }
%struct.ORANGEFS_sys_attr_s = type { i32, i32, i8*, i8*, i32, i32 }
%struct.orangefs_inode_s = type { i32 }

@ATTR_UID = common dso_local global i32 0, align 4
@init_user_ns = common dso_local global i32 0, align 4
@ORANGEFS_ATTR_SYS_UID = common dso_local global i32 0, align 4
@GOSSIP_UTILS_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"(UID) %d\0A\00", align 1
@ATTR_GID = common dso_local global i32 0, align 4
@ORANGEFS_ATTR_SYS_GID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"(GID) %d\0A\00", align 1
@ATTR_ATIME = common dso_local global i32 0, align 4
@ORANGEFS_ATTR_SYS_ATIME = common dso_local global i32 0, align 4
@ATTR_ATIME_SET = common dso_local global i32 0, align 4
@ORANGEFS_ATTR_SYS_ATIME_SET = common dso_local global i32 0, align 4
@ATTR_MTIME = common dso_local global i32 0, align 4
@ORANGEFS_ATTR_SYS_MTIME = common dso_local global i32 0, align 4
@ATTR_MTIME_SET = common dso_local global i32 0, align 4
@ORANGEFS_ATTR_SYS_MTIME_SET = common dso_local global i32 0, align 4
@ATTR_CTIME = common dso_local global i32 0, align 4
@ORANGEFS_ATTR_SYS_CTIME = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4
@ORANGEFS_ATTR_SYS_PERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.ORANGEFS_sys_attr_s*)* @copy_attributes_from_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_attributes_from_inode(%struct.inode* %0, %struct.ORANGEFS_sys_attr_s* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.ORANGEFS_sys_attr_s*, align 8
  %5 = alloca %struct.orangefs_inode_s*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.ORANGEFS_sys_attr_s* %1, %struct.ORANGEFS_sys_attr_s** %4, align 8
  %6 = load %struct.inode*, %struct.inode** %3, align 8
  %7 = call %struct.orangefs_inode_s* @ORANGEFS_I(%struct.inode* %6)
  store %struct.orangefs_inode_s* %7, %struct.orangefs_inode_s** %5, align 8
  %8 = load %struct.ORANGEFS_sys_attr_s*, %struct.ORANGEFS_sys_attr_s** %4, align 8
  %9 = getelementptr inbounds %struct.ORANGEFS_sys_attr_s, %struct.ORANGEFS_sys_attr_s* %8, i32 0, i32 0
  store i32 0, i32* %9, align 8
  %10 = load %struct.orangefs_inode_s*, %struct.orangefs_inode_s** %5, align 8
  %11 = getelementptr inbounds %struct.orangefs_inode_s, %struct.orangefs_inode_s* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @ATTR_UID, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %2
  %17 = load %struct.inode*, %struct.inode** %3, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @from_kuid(i32* @init_user_ns, i32 %19)
  %21 = load %struct.ORANGEFS_sys_attr_s*, %struct.ORANGEFS_sys_attr_s** %4, align 8
  %22 = getelementptr inbounds %struct.ORANGEFS_sys_attr_s, %struct.ORANGEFS_sys_attr_s* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @ORANGEFS_ATTR_SYS_UID, align 4
  %24 = load %struct.ORANGEFS_sys_attr_s*, %struct.ORANGEFS_sys_attr_s** %4, align 8
  %25 = getelementptr inbounds %struct.ORANGEFS_sys_attr_s, %struct.ORANGEFS_sys_attr_s* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load i32, i32* @GOSSIP_UTILS_DEBUG, align 4
  %29 = load %struct.ORANGEFS_sys_attr_s*, %struct.ORANGEFS_sys_attr_s** %4, align 8
  %30 = getelementptr inbounds %struct.ORANGEFS_sys_attr_s, %struct.ORANGEFS_sys_attr_s* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @gossip_debug(i32 %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %16, %2
  %34 = load %struct.orangefs_inode_s*, %struct.orangefs_inode_s** %5, align 8
  %35 = getelementptr inbounds %struct.orangefs_inode_s, %struct.orangefs_inode_s* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ATTR_GID, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %33
  %41 = load %struct.inode*, %struct.inode** %3, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @from_kgid(i32* @init_user_ns, i32 %43)
  %45 = load %struct.ORANGEFS_sys_attr_s*, %struct.ORANGEFS_sys_attr_s** %4, align 8
  %46 = getelementptr inbounds %struct.ORANGEFS_sys_attr_s, %struct.ORANGEFS_sys_attr_s* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* @ORANGEFS_ATTR_SYS_GID, align 4
  %48 = load %struct.ORANGEFS_sys_attr_s*, %struct.ORANGEFS_sys_attr_s** %4, align 8
  %49 = getelementptr inbounds %struct.ORANGEFS_sys_attr_s, %struct.ORANGEFS_sys_attr_s* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  %52 = load i32, i32* @GOSSIP_UTILS_DEBUG, align 4
  %53 = load %struct.ORANGEFS_sys_attr_s*, %struct.ORANGEFS_sys_attr_s** %4, align 8
  %54 = getelementptr inbounds %struct.ORANGEFS_sys_attr_s, %struct.ORANGEFS_sys_attr_s* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @gossip_debug(i32 %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %40, %33
  %58 = load %struct.orangefs_inode_s*, %struct.orangefs_inode_s** %5, align 8
  %59 = getelementptr inbounds %struct.orangefs_inode_s, %struct.orangefs_inode_s* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @ATTR_ATIME, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %90

64:                                               ; preds = %57
  %65 = load i32, i32* @ORANGEFS_ATTR_SYS_ATIME, align 4
  %66 = load %struct.ORANGEFS_sys_attr_s*, %struct.ORANGEFS_sys_attr_s** %4, align 8
  %67 = getelementptr inbounds %struct.ORANGEFS_sys_attr_s, %struct.ORANGEFS_sys_attr_s* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  %70 = load %struct.orangefs_inode_s*, %struct.orangefs_inode_s** %5, align 8
  %71 = getelementptr inbounds %struct.orangefs_inode_s, %struct.orangefs_inode_s* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @ATTR_ATIME_SET, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %89

76:                                               ; preds = %64
  %77 = load %struct.inode*, %struct.inode** %3, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to i8*
  %82 = load %struct.ORANGEFS_sys_attr_s*, %struct.ORANGEFS_sys_attr_s** %4, align 8
  %83 = getelementptr inbounds %struct.ORANGEFS_sys_attr_s, %struct.ORANGEFS_sys_attr_s* %82, i32 0, i32 3
  store i8* %81, i8** %83, align 8
  %84 = load i32, i32* @ORANGEFS_ATTR_SYS_ATIME_SET, align 4
  %85 = load %struct.ORANGEFS_sys_attr_s*, %struct.ORANGEFS_sys_attr_s** %4, align 8
  %86 = getelementptr inbounds %struct.ORANGEFS_sys_attr_s, %struct.ORANGEFS_sys_attr_s* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 8
  br label %89

89:                                               ; preds = %76, %64
  br label %90

90:                                               ; preds = %89, %57
  %91 = load %struct.orangefs_inode_s*, %struct.orangefs_inode_s** %5, align 8
  %92 = getelementptr inbounds %struct.orangefs_inode_s, %struct.orangefs_inode_s* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @ATTR_MTIME, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %123

97:                                               ; preds = %90
  %98 = load i32, i32* @ORANGEFS_ATTR_SYS_MTIME, align 4
  %99 = load %struct.ORANGEFS_sys_attr_s*, %struct.ORANGEFS_sys_attr_s** %4, align 8
  %100 = getelementptr inbounds %struct.ORANGEFS_sys_attr_s, %struct.ORANGEFS_sys_attr_s* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 8
  %103 = load %struct.orangefs_inode_s*, %struct.orangefs_inode_s** %5, align 8
  %104 = getelementptr inbounds %struct.orangefs_inode_s, %struct.orangefs_inode_s* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @ATTR_MTIME_SET, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %122

109:                                              ; preds = %97
  %110 = load %struct.inode*, %struct.inode** %3, align 8
  %111 = getelementptr inbounds %struct.inode, %struct.inode* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = inttoptr i64 %113 to i8*
  %115 = load %struct.ORANGEFS_sys_attr_s*, %struct.ORANGEFS_sys_attr_s** %4, align 8
  %116 = getelementptr inbounds %struct.ORANGEFS_sys_attr_s, %struct.ORANGEFS_sys_attr_s* %115, i32 0, i32 2
  store i8* %114, i8** %116, align 8
  %117 = load i32, i32* @ORANGEFS_ATTR_SYS_MTIME_SET, align 4
  %118 = load %struct.ORANGEFS_sys_attr_s*, %struct.ORANGEFS_sys_attr_s** %4, align 8
  %119 = getelementptr inbounds %struct.ORANGEFS_sys_attr_s, %struct.ORANGEFS_sys_attr_s* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 8
  br label %122

122:                                              ; preds = %109, %97
  br label %123

123:                                              ; preds = %122, %90
  %124 = load %struct.orangefs_inode_s*, %struct.orangefs_inode_s** %5, align 8
  %125 = getelementptr inbounds %struct.orangefs_inode_s, %struct.orangefs_inode_s* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @ATTR_CTIME, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %123
  %131 = load i32, i32* @ORANGEFS_ATTR_SYS_CTIME, align 4
  %132 = load %struct.ORANGEFS_sys_attr_s*, %struct.ORANGEFS_sys_attr_s** %4, align 8
  %133 = getelementptr inbounds %struct.ORANGEFS_sys_attr_s, %struct.ORANGEFS_sys_attr_s* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 8
  br label %136

136:                                              ; preds = %130, %123
  %137 = load %struct.orangefs_inode_s*, %struct.orangefs_inode_s** %5, align 8
  %138 = getelementptr inbounds %struct.orangefs_inode_s, %struct.orangefs_inode_s* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @ATTR_MODE, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %155

143:                                              ; preds = %136
  %144 = load %struct.inode*, %struct.inode** %3, align 8
  %145 = getelementptr inbounds %struct.inode, %struct.inode* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @ORANGEFS_util_translate_mode(i32 %146)
  %148 = load %struct.ORANGEFS_sys_attr_s*, %struct.ORANGEFS_sys_attr_s** %4, align 8
  %149 = getelementptr inbounds %struct.ORANGEFS_sys_attr_s, %struct.ORANGEFS_sys_attr_s* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 4
  %150 = load i32, i32* @ORANGEFS_ATTR_SYS_PERM, align 4
  %151 = load %struct.ORANGEFS_sys_attr_s*, %struct.ORANGEFS_sys_attr_s** %4, align 8
  %152 = getelementptr inbounds %struct.ORANGEFS_sys_attr_s, %struct.ORANGEFS_sys_attr_s* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 8
  br label %155

155:                                              ; preds = %143, %136
  ret void
}

declare dso_local %struct.orangefs_inode_s* @ORANGEFS_I(%struct.inode*) #1

declare dso_local i32 @from_kuid(i32*, i32) #1

declare dso_local i32 @gossip_debug(i32, i8*, i32) #1

declare dso_local i32 @from_kgid(i32*, i32) #1

declare dso_local i32 @ORANGEFS_util_translate_mode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
