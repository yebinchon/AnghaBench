; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_gfs2_rlist_add.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_rgrp.c_gfs2_rlist_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.gfs2_rgrpd* }
%struct.gfs2_rgrpd = type { i32 }
%struct.gfs2_rgrp_list = type { i32, i32, %struct.gfs2_rgrpd**, i32 }
%struct.gfs2_sbd = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"rlist_add: no rgrp for block %llu\0A\00", align 1
@GFP_NOFS = common dso_local global i32 0, align 4
@__GFP_NOFAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gfs2_rlist_add(%struct.gfs2_inode* %0, %struct.gfs2_rgrp_list* %1, i64 %2) #0 {
  %4 = alloca %struct.gfs2_inode*, align 8
  %5 = alloca %struct.gfs2_rgrp_list*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.gfs2_sbd*, align 8
  %8 = alloca %struct.gfs2_rgrpd*, align 8
  %9 = alloca %struct.gfs2_rgrpd**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %4, align 8
  store %struct.gfs2_rgrp_list* %1, %struct.gfs2_rgrp_list** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %13 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %12, i32 0, i32 1
  %14 = call %struct.gfs2_sbd* @GFS2_SB(i32* %13)
  store %struct.gfs2_sbd* %14, %struct.gfs2_sbd** %7, align 8
  %15 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %16 = load %struct.gfs2_rgrp_list*, %struct.gfs2_rgrp_list** %5, align 8
  %17 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @gfs2_assert_warn(%struct.gfs2_sbd* %15, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %171

25:                                               ; preds = %3
  %26 = load %struct.gfs2_rgrp_list*, %struct.gfs2_rgrp_list** %5, align 8
  %27 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %50

30:                                               ; preds = %25
  %31 = load %struct.gfs2_rgrp_list*, %struct.gfs2_rgrp_list** %5, align 8
  %32 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %31, i32 0, i32 2
  %33 = load %struct.gfs2_rgrpd**, %struct.gfs2_rgrpd*** %32, align 8
  %34 = load %struct.gfs2_rgrp_list*, %struct.gfs2_rgrp_list** %5, align 8
  %35 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %33, i64 %38
  %40 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %39, align 8
  store %struct.gfs2_rgrpd* %40, %struct.gfs2_rgrpd** %8, align 8
  %41 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %8, align 8
  %42 = load i64, i64* %6, align 8
  %43 = call i64 @rgrp_contains_block(%struct.gfs2_rgrpd* %41, i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %30
  br label %171

46:                                               ; preds = %30
  %47 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %48 = load i64, i64* %6, align 8
  %49 = call %struct.gfs2_rgrpd* @gfs2_blk2rgrpd(%struct.gfs2_sbd* %47, i64 %48, i32 1)
  store %struct.gfs2_rgrpd* %49, %struct.gfs2_rgrpd** %8, align 8
  br label %68

50:                                               ; preds = %25
  %51 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %52 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %54, align 8
  store %struct.gfs2_rgrpd* %55, %struct.gfs2_rgrpd** %8, align 8
  %56 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %8, align 8
  %57 = icmp ne %struct.gfs2_rgrpd* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %50
  %59 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %8, align 8
  %60 = load i64, i64* %6, align 8
  %61 = call i64 @rgrp_contains_block(%struct.gfs2_rgrpd* %59, i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %58, %50
  %64 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %65 = load i64, i64* %6, align 8
  %66 = call %struct.gfs2_rgrpd* @gfs2_blk2rgrpd(%struct.gfs2_sbd* %64, i64 %65, i32 1)
  store %struct.gfs2_rgrpd* %66, %struct.gfs2_rgrpd** %8, align 8
  br label %67

67:                                               ; preds = %63, %58
  br label %68

68:                                               ; preds = %67, %46
  %69 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %8, align 8
  %70 = icmp ne %struct.gfs2_rgrpd* %69, null
  br i1 %70, label %75, label %71

71:                                               ; preds = %68
  %72 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %7, align 8
  %73 = load i64, i64* %6, align 8
  %74 = call i32 @fs_err(%struct.gfs2_sbd* %72, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %73)
  br label %171

75:                                               ; preds = %68
  store i32 0, i32* %11, align 4
  br label %76

76:                                               ; preds = %112, %75
  %77 = load i32, i32* %11, align 4
  %78 = load %struct.gfs2_rgrp_list*, %struct.gfs2_rgrp_list** %5, align 8
  %79 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ult i32 %77, %80
  br i1 %81, label %82, label %115

82:                                               ; preds = %76
  %83 = load %struct.gfs2_rgrp_list*, %struct.gfs2_rgrp_list** %5, align 8
  %84 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %83, i32 0, i32 2
  %85 = load %struct.gfs2_rgrpd**, %struct.gfs2_rgrpd*** %84, align 8
  %86 = load i32, i32* %11, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %85, i64 %87
  %89 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %88, align 8
  %90 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %8, align 8
  %91 = icmp eq %struct.gfs2_rgrpd* %89, %90
  br i1 %91, label %92, label %111

92:                                               ; preds = %82
  %93 = load %struct.gfs2_rgrp_list*, %struct.gfs2_rgrp_list** %5, align 8
  %94 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %93, i32 0, i32 2
  %95 = load %struct.gfs2_rgrpd**, %struct.gfs2_rgrpd*** %94, align 8
  %96 = load i32, i32* %11, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %95, i64 %97
  %99 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %98, align 8
  %100 = load %struct.gfs2_rgrp_list*, %struct.gfs2_rgrp_list** %5, align 8
  %101 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %100, i32 0, i32 2
  %102 = load %struct.gfs2_rgrpd**, %struct.gfs2_rgrpd*** %101, align 8
  %103 = load %struct.gfs2_rgrp_list*, %struct.gfs2_rgrp_list** %5, align 8
  %104 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = sub nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %102, i64 %107
  %109 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %108, align 8
  %110 = call i32 @swap(%struct.gfs2_rgrpd* %99, %struct.gfs2_rgrpd* %109)
  br label %171

111:                                              ; preds = %82
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %11, align 4
  %114 = add i32 %113, 1
  store i32 %114, i32* %11, align 4
  br label %76

115:                                              ; preds = %76
  %116 = load %struct.gfs2_rgrp_list*, %struct.gfs2_rgrp_list** %5, align 8
  %117 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.gfs2_rgrp_list*, %struct.gfs2_rgrp_list** %5, align 8
  %120 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %118, %121
  br i1 %122, label %123, label %160

123:                                              ; preds = %115
  %124 = load %struct.gfs2_rgrp_list*, %struct.gfs2_rgrp_list** %5, align 8
  %125 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, 10
  store i32 %127, i32* %10, align 4
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* @GFP_NOFS, align 4
  %130 = load i32, i32* @__GFP_NOFAIL, align 4
  %131 = or i32 %129, %130
  %132 = call %struct.gfs2_rgrpd** @kcalloc(i32 %128, i32 8, i32 %131)
  store %struct.gfs2_rgrpd** %132, %struct.gfs2_rgrpd*** %9, align 8
  %133 = load %struct.gfs2_rgrp_list*, %struct.gfs2_rgrp_list** %5, align 8
  %134 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %133, i32 0, i32 2
  %135 = load %struct.gfs2_rgrpd**, %struct.gfs2_rgrpd*** %134, align 8
  %136 = icmp ne %struct.gfs2_rgrpd** %135, null
  br i1 %136, label %137, label %153

137:                                              ; preds = %123
  %138 = load %struct.gfs2_rgrpd**, %struct.gfs2_rgrpd*** %9, align 8
  %139 = load %struct.gfs2_rgrp_list*, %struct.gfs2_rgrp_list** %5, align 8
  %140 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %139, i32 0, i32 2
  %141 = load %struct.gfs2_rgrpd**, %struct.gfs2_rgrpd*** %140, align 8
  %142 = load %struct.gfs2_rgrp_list*, %struct.gfs2_rgrp_list** %5, align 8
  %143 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = sext i32 %144 to i64
  %146 = mul i64 %145, 8
  %147 = trunc i64 %146 to i32
  %148 = call i32 @memcpy(%struct.gfs2_rgrpd** %138, %struct.gfs2_rgrpd** %141, i32 %147)
  %149 = load %struct.gfs2_rgrp_list*, %struct.gfs2_rgrp_list** %5, align 8
  %150 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %149, i32 0, i32 2
  %151 = load %struct.gfs2_rgrpd**, %struct.gfs2_rgrpd*** %150, align 8
  %152 = call i32 @kfree(%struct.gfs2_rgrpd** %151)
  br label %153

153:                                              ; preds = %137, %123
  %154 = load i32, i32* %10, align 4
  %155 = load %struct.gfs2_rgrp_list*, %struct.gfs2_rgrp_list** %5, align 8
  %156 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %155, i32 0, i32 1
  store i32 %154, i32* %156, align 4
  %157 = load %struct.gfs2_rgrpd**, %struct.gfs2_rgrpd*** %9, align 8
  %158 = load %struct.gfs2_rgrp_list*, %struct.gfs2_rgrp_list** %5, align 8
  %159 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %158, i32 0, i32 2
  store %struct.gfs2_rgrpd** %157, %struct.gfs2_rgrpd*** %159, align 8
  br label %160

160:                                              ; preds = %153, %115
  %161 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %8, align 8
  %162 = load %struct.gfs2_rgrp_list*, %struct.gfs2_rgrp_list** %5, align 8
  %163 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %162, i32 0, i32 2
  %164 = load %struct.gfs2_rgrpd**, %struct.gfs2_rgrpd*** %163, align 8
  %165 = load %struct.gfs2_rgrp_list*, %struct.gfs2_rgrp_list** %5, align 8
  %166 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %166, align 8
  %169 = sext i32 %167 to i64
  %170 = getelementptr inbounds %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %164, i64 %169
  store %struct.gfs2_rgrpd* %161, %struct.gfs2_rgrpd** %170, align 8
  br label %171

171:                                              ; preds = %160, %92, %71, %45, %24
  ret void
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(i32*) #1

declare dso_local i64 @gfs2_assert_warn(%struct.gfs2_sbd*, i32) #1

declare dso_local i64 @rgrp_contains_block(%struct.gfs2_rgrpd*, i64) #1

declare dso_local %struct.gfs2_rgrpd* @gfs2_blk2rgrpd(%struct.gfs2_sbd*, i64, i32) #1

declare dso_local i32 @fs_err(%struct.gfs2_sbd*, i8*, i64) #1

declare dso_local i32 @swap(%struct.gfs2_rgrpd*, %struct.gfs2_rgrpd*) #1

declare dso_local %struct.gfs2_rgrpd** @kcalloc(i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.gfs2_rgrpd**, %struct.gfs2_rgrpd**, i32) #1

declare dso_local i32 @kfree(%struct.gfs2_rgrpd**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
