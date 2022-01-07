; ModuleID = '/home/carl/AnghaBench/linux/fs/romfs/extr_super.c_romfs_iget.c'
source_filename = "/home/carl/AnghaBench/linux/fs/romfs/extr_super.c_romfs_iget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i64, i32, %struct.TYPE_8__, i32*, i32*, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.super_block = type { i32 }
%struct.romfs_inode_info = type { i64, i64 }
%struct.romfs_inode = type { i32, i32, i32 }

@ROMFH_TYPE = common dso_local global i32 0, align 4
@ROMFH_HRD = common dso_local global i32 0, align 4
@ROMFH_MASK = common dso_local global i64 0, align 8
@ROMFH_SIZE = common dso_local global i64 0, align 8
@ROMFS_MAXFN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@I_NEW = common dso_local global i32 0, align 4
@ROMFH_PAD = common dso_local global i64 0, align 8
@romfs_modemap = common dso_local global i32* null, align 8
@romfs_dir_inode_operations = common dso_local global i32 0, align 4
@romfs_dir_operations = common dso_local global i32 0, align 4
@ROMFH_EXEC = common dso_local global i32 0, align 4
@S_IXUGO = common dso_local global i32 0, align 4
@romfs_ro_fops = common dso_local global i32 0, align 4
@romfs_aops = common dso_local global i32 0, align 4
@page_symlink_inode_operations = common dso_local global i32 0, align 4
@S_IRWXUGO = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"read error for inode 0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.super_block*, i64)* @romfs_iget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @romfs_iget(%struct.super_block* %0, i64 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.romfs_inode_info*, align 8
  %7 = alloca %struct.romfs_inode, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i64 %1, i64* %5, align 8
  br label %13

13:                                               ; preds = %31, %2
  %14 = load %struct.super_block*, %struct.super_block** %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @romfs_dev_read(%struct.super_block* %14, i64 %15, %struct.romfs_inode* %7, i32 12)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %191

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.romfs_inode, %struct.romfs_inode* %7, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @be32_to_cpu(i32 %22)
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @ROMFH_TYPE, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @ROMFH_HRD, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  br label %37

31:                                               ; preds = %20
  %32 = getelementptr inbounds %struct.romfs_inode, %struct.romfs_inode* %7, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @be32_to_cpu(i32 %33)
  %35 = load i64, i64* @ROMFH_MASK, align 8
  %36 = and i64 %34, %35
  store i64 %36, i64* %5, align 8
  br label %13

37:                                               ; preds = %30
  %38 = load %struct.super_block*, %struct.super_block** %4, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @ROMFH_SIZE, align 8
  %41 = add i64 %39, %40
  %42 = load i32, i32* @ROMFS_MAXFN, align 4
  %43 = call i64 @romfs_dev_strnlen(%struct.super_block* %38, i64 %41, i32 %42)
  store i64 %43, i64* %9, align 8
  %44 = load i64, i64* %9, align 8
  %45 = call i64 @IS_ERR_VALUE(i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  br label %188

48:                                               ; preds = %37
  %49 = load %struct.super_block*, %struct.super_block** %4, align 8
  %50 = load i64, i64* %5, align 8
  %51 = call %struct.inode* @iget_locked(%struct.super_block* %49, i64 %50)
  store %struct.inode* %51, %struct.inode** %8, align 8
  %52 = load %struct.inode*, %struct.inode** %8, align 8
  %53 = icmp ne %struct.inode* %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  %57 = call %struct.inode* @ERR_PTR(i32 %56)
  store %struct.inode* %57, %struct.inode** %3, align 8
  br label %196

58:                                               ; preds = %48
  %59 = load %struct.inode*, %struct.inode** %8, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @I_NEW, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %58
  %66 = load %struct.inode*, %struct.inode** %8, align 8
  store %struct.inode* %66, %struct.inode** %3, align 8
  br label %196

67:                                               ; preds = %58
  %68 = load %struct.inode*, %struct.inode** %8, align 8
  %69 = call %struct.romfs_inode_info* @ROMFS_I(%struct.inode* %68)
  store %struct.romfs_inode_info* %69, %struct.romfs_inode_info** %6, align 8
  %70 = load i64, i64* @ROMFH_SIZE, align 8
  %71 = load i64, i64* %9, align 8
  %72 = add i64 %70, %71
  %73 = add i64 %72, 1
  %74 = load i64, i64* @ROMFH_PAD, align 8
  %75 = add i64 %73, %74
  %76 = load i64, i64* @ROMFH_MASK, align 8
  %77 = and i64 %75, %76
  %78 = load %struct.romfs_inode_info*, %struct.romfs_inode_info** %6, align 8
  %79 = getelementptr inbounds %struct.romfs_inode_info, %struct.romfs_inode_info* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  %80 = load i64, i64* %5, align 8
  %81 = load %struct.romfs_inode_info*, %struct.romfs_inode_info** %6, align 8
  %82 = getelementptr inbounds %struct.romfs_inode_info, %struct.romfs_inode_info* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = add i64 %80, %83
  %85 = load %struct.romfs_inode_info*, %struct.romfs_inode_info** %6, align 8
  %86 = getelementptr inbounds %struct.romfs_inode_info, %struct.romfs_inode_info* %85, i32 0, i32 1
  store i64 %84, i64* %86, align 8
  %87 = load %struct.inode*, %struct.inode** %8, align 8
  %88 = call i32 @set_nlink(%struct.inode* %87, i32 1)
  %89 = getelementptr inbounds %struct.romfs_inode, %struct.romfs_inode* %7, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @be32_to_cpu(i32 %90)
  %92 = load %struct.inode*, %struct.inode** %8, align 8
  %93 = getelementptr inbounds %struct.inode, %struct.inode* %92, i32 0, i32 1
  store i64 %91, i64* %93, align 8
  %94 = load %struct.inode*, %struct.inode** %8, align 8
  %95 = getelementptr inbounds %struct.inode, %struct.inode* %94, i32 0, i32 6
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  store i64 0, i64* %96, align 8
  %97 = load %struct.inode*, %struct.inode** %8, align 8
  %98 = getelementptr inbounds %struct.inode, %struct.inode* %97, i32 0, i32 7
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  store i64 0, i64* %99, align 8
  %100 = load %struct.inode*, %struct.inode** %8, align 8
  %101 = getelementptr inbounds %struct.inode, %struct.inode* %100, i32 0, i32 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 1
  store i64 0, i64* %102, align 8
  %103 = load %struct.inode*, %struct.inode** %8, align 8
  %104 = getelementptr inbounds %struct.inode, %struct.inode* %103, i32 0, i32 6
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  store i64 0, i64* %105, align 8
  %106 = load %struct.inode*, %struct.inode** %8, align 8
  %107 = getelementptr inbounds %struct.inode, %struct.inode* %106, i32 0, i32 7
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  store i64 0, i64* %108, align 8
  %109 = load %struct.inode*, %struct.inode** %8, align 8
  %110 = getelementptr inbounds %struct.inode, %struct.inode* %109, i32 0, i32 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  store i64 0, i64* %111, align 8
  %112 = load i32*, i32** @romfs_modemap, align 8
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* @ROMFH_TYPE, align 4
  %115 = and i32 %113, %114
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %112, i64 %116
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %12, align 4
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* @ROMFH_TYPE, align 4
  %121 = and i32 %119, %120
  switch i32 %121, label %168 [
    i32 130, label %122
    i32 129, label %142
    i32 128, label %157
  ]

122:                                              ; preds = %67
  %123 = load %struct.inode*, %struct.inode** %8, align 8
  %124 = call %struct.romfs_inode_info* @ROMFS_I(%struct.inode* %123)
  %125 = getelementptr inbounds %struct.romfs_inode_info, %struct.romfs_inode_info* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.inode*, %struct.inode** %8, align 8
  %128 = getelementptr inbounds %struct.inode, %struct.inode* %127, i32 0, i32 1
  store i64 %126, i64* %128, align 8
  %129 = load %struct.inode*, %struct.inode** %8, align 8
  %130 = getelementptr inbounds %struct.inode, %struct.inode* %129, i32 0, i32 4
  store i32* @romfs_dir_inode_operations, i32** %130, align 8
  %131 = load %struct.inode*, %struct.inode** %8, align 8
  %132 = getelementptr inbounds %struct.inode, %struct.inode* %131, i32 0, i32 5
  store i32* @romfs_dir_operations, i32** %132, align 8
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* @ROMFH_EXEC, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %122
  %138 = load i32, i32* @S_IXUGO, align 4
  %139 = load i32, i32* %12, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %12, align 4
  br label %141

141:                                              ; preds = %137, %122
  br label %181

142:                                              ; preds = %67
  %143 = load %struct.inode*, %struct.inode** %8, align 8
  %144 = getelementptr inbounds %struct.inode, %struct.inode* %143, i32 0, i32 5
  store i32* @romfs_ro_fops, i32** %144, align 8
  %145 = load %struct.inode*, %struct.inode** %8, align 8
  %146 = getelementptr inbounds %struct.inode, %struct.inode* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  store i32* @romfs_aops, i32** %147, align 8
  %148 = load i32, i32* %10, align 4
  %149 = load i32, i32* @ROMFH_EXEC, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %142
  %153 = load i32, i32* @S_IXUGO, align 4
  %154 = load i32, i32* %12, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %12, align 4
  br label %156

156:                                              ; preds = %152, %142
  br label %181

157:                                              ; preds = %67
  %158 = load %struct.inode*, %struct.inode** %8, align 8
  %159 = getelementptr inbounds %struct.inode, %struct.inode* %158, i32 0, i32 4
  store i32* @page_symlink_inode_operations, i32** %159, align 8
  %160 = load %struct.inode*, %struct.inode** %8, align 8
  %161 = call i32 @inode_nohighmem(%struct.inode* %160)
  %162 = load %struct.inode*, %struct.inode** %8, align 8
  %163 = getelementptr inbounds %struct.inode, %struct.inode* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  store i32* @romfs_aops, i32** %164, align 8
  %165 = load i32, i32* @S_IRWXUGO, align 4
  %166 = load i32, i32* %12, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %12, align 4
  br label %181

168:                                              ; preds = %67
  %169 = getelementptr inbounds %struct.romfs_inode, %struct.romfs_inode* %7, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i64 @be32_to_cpu(i32 %170)
  %172 = trunc i64 %171 to i32
  store i32 %172, i32* %10, align 4
  %173 = load %struct.inode*, %struct.inode** %8, align 8
  %174 = load i32, i32* %12, align 4
  %175 = load i32, i32* %10, align 4
  %176 = lshr i32 %175, 16
  %177 = load i32, i32* %10, align 4
  %178 = and i32 %177, 65535
  %179 = call i32 @MKDEV(i32 %176, i32 %178)
  %180 = call i32 @init_special_inode(%struct.inode* %173, i32 %174, i32 %179)
  br label %181

181:                                              ; preds = %168, %157, %156, %141
  %182 = load i32, i32* %12, align 4
  %183 = load %struct.inode*, %struct.inode** %8, align 8
  %184 = getelementptr inbounds %struct.inode, %struct.inode* %183, i32 0, i32 2
  store i32 %182, i32* %184, align 8
  %185 = load %struct.inode*, %struct.inode** %8, align 8
  %186 = call i32 @unlock_new_inode(%struct.inode* %185)
  %187 = load %struct.inode*, %struct.inode** %8, align 8
  store %struct.inode* %187, %struct.inode** %3, align 8
  br label %196

188:                                              ; preds = %47
  %189 = load i32, i32* @EIO, align 4
  %190 = sub nsw i32 0, %189
  store i32 %190, i32* %11, align 4
  br label %191

191:                                              ; preds = %188, %19
  %192 = load i64, i64* %5, align 8
  %193 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %192)
  %194 = load i32, i32* %11, align 4
  %195 = call %struct.inode* @ERR_PTR(i32 %194)
  store %struct.inode* %195, %struct.inode** %3, align 8
  br label %196

196:                                              ; preds = %191, %181, %65, %54
  %197 = load %struct.inode*, %struct.inode** %3, align 8
  ret %struct.inode* %197
}

declare dso_local i32 @romfs_dev_read(%struct.super_block*, i64, %struct.romfs_inode*, i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i64 @romfs_dev_strnlen(%struct.super_block*, i64, i32) #1

declare dso_local i64 @IS_ERR_VALUE(i64) #1

declare dso_local %struct.inode* @iget_locked(%struct.super_block*, i64) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local %struct.romfs_inode_info* @ROMFS_I(%struct.inode*) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

declare dso_local i32 @inode_nohighmem(%struct.inode*) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i32, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @pr_err(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
