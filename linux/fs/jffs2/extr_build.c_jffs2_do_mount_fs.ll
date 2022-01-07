; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_build.c_jffs2_do_mount_fs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_build.c_jffs2_do_mount_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_sb_info = type { i32, i32, i32, i32, i32, %struct.TYPE_4__*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"build_fs failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jffs2_do_mount_fs(%struct.jffs2_sb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.jffs2_sb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.jffs2_sb_info* %0, %struct.jffs2_sb_info** %3, align 8
  %7 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %8 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %11 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %13 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %16 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = sdiv i32 %14, %17
  %19 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %20 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %22 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = mul i64 4, %24
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %6, align 4
  %27 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %28 = call i64 @jffs2_blocks_use_vmalloc(%struct.jffs2_sb_info* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %1
  %31 = load i32, i32* %6, align 4
  %32 = call %struct.TYPE_4__* @vzalloc(i32 %31)
  %33 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %34 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %33, i32 0, i32 5
  store %struct.TYPE_4__* %32, %struct.TYPE_4__** %34, align 8
  br label %41

35:                                               ; preds = %1
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.TYPE_4__* @kzalloc(i32 %36, i32 %37)
  %39 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %40 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %39, i32 0, i32 5
  store %struct.TYPE_4__* %38, %struct.TYPE_4__** %40, align 8
  br label %41

41:                                               ; preds = %35, %30
  %42 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %43 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %42, i32 0, i32 5
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = icmp ne %struct.TYPE_4__* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %157

49:                                               ; preds = %41
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %87, %49
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %53 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %90

56:                                               ; preds = %50
  %57 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %58 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %57, i32 0, i32 5
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = call i32 @INIT_LIST_HEAD(i32* %63)
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %67 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 %65, %68
  %70 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %71 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %70, i32 0, i32 5
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store i32 %69, i32* %76, align 4
  %77 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %78 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %81 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %80, i32 0, i32 5
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  store i32 %79, i32* %86, align 4
  br label %87

87:                                               ; preds = %56
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %5, align 4
  br label %50

90:                                               ; preds = %50
  %91 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %92 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %91, i32 0, i32 18
  %93 = call i32 @INIT_LIST_HEAD(i32* %92)
  %94 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %95 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %94, i32 0, i32 17
  %96 = call i32 @INIT_LIST_HEAD(i32* %95)
  %97 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %98 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %97, i32 0, i32 16
  %99 = call i32 @INIT_LIST_HEAD(i32* %98)
  %100 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %101 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %100, i32 0, i32 15
  %102 = call i32 @INIT_LIST_HEAD(i32* %101)
  %103 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %104 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %103, i32 0, i32 14
  %105 = call i32 @INIT_LIST_HEAD(i32* %104)
  %106 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %107 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %106, i32 0, i32 13
  %108 = call i32 @INIT_LIST_HEAD(i32* %107)
  %109 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %110 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %109, i32 0, i32 12
  %111 = call i32 @INIT_LIST_HEAD(i32* %110)
  %112 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %113 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %112, i32 0, i32 11
  %114 = call i32 @INIT_LIST_HEAD(i32* %113)
  %115 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %116 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %115, i32 0, i32 10
  %117 = call i32 @INIT_LIST_HEAD(i32* %116)
  %118 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %119 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %118, i32 0, i32 9
  %120 = call i32 @INIT_LIST_HEAD(i32* %119)
  %121 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %122 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %121, i32 0, i32 8
  %123 = call i32 @INIT_LIST_HEAD(i32* %122)
  %124 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %125 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %124, i32 0, i32 7
  %126 = call i32 @INIT_LIST_HEAD(i32* %125)
  %127 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %128 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %127, i32 0, i32 4
  store i32 1, i32* %128, align 8
  %129 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %130 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %129, i32 0, i32 6
  store i32* null, i32** %130, align 8
  %131 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %132 = call i32 @jffs2_sum_init(%struct.jffs2_sb_info* %131)
  store i32 %132, i32* %4, align 4
  %133 = load i32, i32* %4, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %90
  br label %151

136:                                              ; preds = %90
  %137 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %138 = call i64 @jffs2_build_filesystem(%struct.jffs2_sb_info* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %136
  %141 = call i32 @dbg_fsbuild(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %142 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %143 = call i32 @jffs2_free_ino_caches(%struct.jffs2_sb_info* %142)
  %144 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %145 = call i32 @jffs2_free_raw_node_refs(%struct.jffs2_sb_info* %144)
  %146 = load i32, i32* @EIO, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %4, align 4
  br label %151

148:                                              ; preds = %136
  %149 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %150 = call i32 @jffs2_calc_trigger_levels(%struct.jffs2_sb_info* %149)
  store i32 0, i32* %2, align 4
  br label %157

151:                                              ; preds = %140, %135
  %152 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %3, align 8
  %153 = getelementptr inbounds %struct.jffs2_sb_info, %struct.jffs2_sb_info* %152, i32 0, i32 5
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %153, align 8
  %155 = call i32 @kvfree(%struct.TYPE_4__* %154)
  %156 = load i32, i32* %4, align 4
  store i32 %156, i32* %2, align 4
  br label %157

157:                                              ; preds = %151, %148, %46
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local i64 @jffs2_blocks_use_vmalloc(%struct.jffs2_sb_info*) #1

declare dso_local %struct.TYPE_4__* @vzalloc(i32) #1

declare dso_local %struct.TYPE_4__* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @jffs2_sum_init(%struct.jffs2_sb_info*) #1

declare dso_local i64 @jffs2_build_filesystem(%struct.jffs2_sb_info*) #1

declare dso_local i32 @dbg_fsbuild(i8*) #1

declare dso_local i32 @jffs2_free_ino_caches(%struct.jffs2_sb_info*) #1

declare dso_local i32 @jffs2_free_raw_node_refs(%struct.jffs2_sb_info*) #1

declare dso_local i32 @jffs2_calc_trigger_levels(%struct.jffs2_sb_info*) #1

declare dso_local i32 @kvfree(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
