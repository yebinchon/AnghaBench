; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_ops_fstype.c_init_per_node.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_ops_fstype.c_init_per_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { %struct.inode*, %struct.inode*, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__, i32 }
%struct.inode = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.gfs2_inode = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"per_node\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"can't find per_node directory: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"statfs_change%u\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"can't find local \22sc\22 file: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"quota_change%u\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"can't find local \22qc\22 file: %d\0A\00", align 1
@LM_ST_EXCLUSIVE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"can't lock local \22sc\22 file: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"can't lock local \22qc\22 file: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_sbd*, i32)* @init_per_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_per_node(%struct.gfs2_sbd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gfs2_sbd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca [30 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca %struct.gfs2_inode*, align 8
  %10 = alloca %struct.inode*, align 8
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.inode* null, %struct.inode** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %12 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.inode* @d_inode(i32 %13)
  store %struct.inode* %14, %struct.inode** %10, align 8
  %15 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %16 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %15, i32 0, i32 5
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %154

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  br label %132

25:                                               ; preds = %21
  %26 = load %struct.inode*, %struct.inode** %10, align 8
  %27 = call i8* @gfs2_lookup_simple(%struct.inode* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %28 = bitcast i8* %27 to %struct.inode*
  store %struct.inode* %28, %struct.inode** %6, align 8
  %29 = load %struct.inode*, %struct.inode** %6, align 8
  %30 = call i64 @IS_ERR(%struct.inode* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %25
  %33 = load %struct.inode*, %struct.inode** %6, align 8
  %34 = call i32 @PTR_ERR(%struct.inode* %33)
  store i32 %34, i32* %8, align 4
  %35 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @fs_err(%struct.gfs2_sbd* %35, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %3, align 4
  br label %154

39:                                               ; preds = %25
  %40 = getelementptr inbounds [30 x i8], [30 x i8]* %7, i64 0, i64 0
  %41 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %42 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %41, i32 0, i32 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @sprintf(i8* %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  %47 = load %struct.inode*, %struct.inode** %6, align 8
  %48 = getelementptr inbounds [30 x i8], [30 x i8]* %7, i64 0, i64 0
  %49 = call i8* @gfs2_lookup_simple(%struct.inode* %47, i8* %48)
  %50 = bitcast i8* %49 to %struct.inode*
  %51 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %52 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %51, i32 0, i32 0
  store %struct.inode* %50, %struct.inode** %52, align 8
  %53 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %54 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %53, i32 0, i32 0
  %55 = load %struct.inode*, %struct.inode** %54, align 8
  %56 = call i64 @IS_ERR(%struct.inode* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %39
  %59 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %60 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %59, i32 0, i32 0
  %61 = load %struct.inode*, %struct.inode** %60, align 8
  %62 = call i32 @PTR_ERR(%struct.inode* %61)
  store i32 %62, i32* %8, align 4
  %63 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @fs_err(%struct.gfs2_sbd* %63, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  br label %150

66:                                               ; preds = %39
  %67 = getelementptr inbounds [30 x i8], [30 x i8]* %7, i64 0, i64 0
  %68 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %69 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %68, i32 0, i32 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @sprintf(i8* %67, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %72)
  %74 = load %struct.inode*, %struct.inode** %6, align 8
  %75 = getelementptr inbounds [30 x i8], [30 x i8]* %7, i64 0, i64 0
  %76 = call i8* @gfs2_lookup_simple(%struct.inode* %74, i8* %75)
  %77 = bitcast i8* %76 to %struct.inode*
  %78 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %79 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %78, i32 0, i32 1
  store %struct.inode* %77, %struct.inode** %79, align 8
  %80 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %81 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %80, i32 0, i32 1
  %82 = load %struct.inode*, %struct.inode** %81, align 8
  %83 = call i64 @IS_ERR(%struct.inode* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %66
  %86 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %87 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %86, i32 0, i32 1
  %88 = load %struct.inode*, %struct.inode** %87, align 8
  %89 = call i32 @PTR_ERR(%struct.inode* %88)
  store i32 %89, i32* %8, align 4
  %90 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @fs_err(%struct.gfs2_sbd* %90, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %91)
  br label %145

93:                                               ; preds = %66
  %94 = load %struct.inode*, %struct.inode** %6, align 8
  %95 = call i32 @iput(%struct.inode* %94)
  store %struct.inode* null, %struct.inode** %6, align 8
  %96 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %97 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %96, i32 0, i32 0
  %98 = load %struct.inode*, %struct.inode** %97, align 8
  %99 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %98)
  store %struct.gfs2_inode* %99, %struct.gfs2_inode** %9, align 8
  %100 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %101 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %104 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %105 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %104, i32 0, i32 2
  %106 = call i32 @gfs2_glock_nq_init(i32 %102, i32 %103, i32 0, i32* %105)
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %93
  %110 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @fs_err(%struct.gfs2_sbd* %110, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %111)
  br label %140

113:                                              ; preds = %93
  %114 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %115 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %114, i32 0, i32 1
  %116 = load %struct.inode*, %struct.inode** %115, align 8
  %117 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %116)
  store %struct.gfs2_inode* %117, %struct.gfs2_inode** %9, align 8
  %118 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %119 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %122 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %123 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %122, i32 0, i32 3
  %124 = call i32 @gfs2_glock_nq_init(i32 %120, i32 %121, i32 0, i32* %123)
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* %8, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %113
  %128 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @fs_err(%struct.gfs2_sbd* %128, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %129)
  br label %136

131:                                              ; preds = %113
  store i32 0, i32* %3, align 4
  br label %154

132:                                              ; preds = %24
  %133 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %134 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %133, i32 0, i32 3
  %135 = call i32 @gfs2_glock_dq_uninit(i32* %134)
  br label %136

136:                                              ; preds = %132, %127
  %137 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %138 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %137, i32 0, i32 2
  %139 = call i32 @gfs2_glock_dq_uninit(i32* %138)
  br label %140

140:                                              ; preds = %136, %109
  %141 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %142 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %141, i32 0, i32 1
  %143 = load %struct.inode*, %struct.inode** %142, align 8
  %144 = call i32 @iput(%struct.inode* %143)
  br label %145

145:                                              ; preds = %140, %85
  %146 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %147 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %146, i32 0, i32 0
  %148 = load %struct.inode*, %struct.inode** %147, align 8
  %149 = call i32 @iput(%struct.inode* %148)
  br label %150

150:                                              ; preds = %145, %58
  %151 = load %struct.inode*, %struct.inode** %6, align 8
  %152 = call i32 @iput(%struct.inode* %151)
  %153 = load i32, i32* %8, align 4
  store i32 %153, i32* %3, align 4
  br label %154

154:                                              ; preds = %150, %131, %32, %20
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local i8* @gfs2_lookup_simple(%struct.inode*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @fs_err(%struct.gfs2_sbd*, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local i32 @gfs2_glock_nq_init(i32, i32, i32, i32*) #1

declare dso_local i32 @gfs2_glock_dq_uninit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
