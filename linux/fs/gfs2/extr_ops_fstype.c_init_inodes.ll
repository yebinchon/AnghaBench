; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_ops_fstype.c_init_inodes.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_ops_fstype.c_init_inodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_4__*, i64, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.inode = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"statfs\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"can't read in statfs inode: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"rindex\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"can't get resource index inode: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"quota\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"can't get quota file inode: %d\0A\00", align 1
@gfs2_quota_imutex_key = common dso_local global i32 0, align 4
@UNDO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_sbd*, i32)* @init_inodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_inodes(%struct.gfs2_sbd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gfs2_sbd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %9 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.inode* @d_inode(i32 %10)
  store %struct.inode* %11, %struct.inode** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %96

15:                                               ; preds = %2
  %16 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @init_journal(%struct.gfs2_sbd* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %20 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %19, i32 0, i32 4
  %21 = call i32 @complete_all(i32* %20)
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %117

25:                                               ; preds = %15
  %26 = load %struct.inode*, %struct.inode** %7, align 8
  %27 = call i8* @gfs2_lookup_simple(%struct.inode* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %28 = bitcast i8* %27 to %struct.TYPE_4__*
  %29 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %30 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %29, i32 0, i32 0
  store %struct.TYPE_4__* %28, %struct.TYPE_4__** %30, align 8
  %31 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %32 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = call i64 @IS_ERR(%struct.TYPE_4__* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %25
  %37 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %38 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = call i32 @PTR_ERR(%struct.TYPE_4__* %39)
  store i32 %40, i32* %6, align 4
  %41 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @fs_err(%struct.gfs2_sbd* %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %113

44:                                               ; preds = %25
  %45 = load %struct.inode*, %struct.inode** %7, align 8
  %46 = call i8* @gfs2_lookup_simple(%struct.inode* %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %47 = bitcast i8* %46 to %struct.TYPE_4__*
  %48 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %49 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %48, i32 0, i32 1
  store %struct.TYPE_4__* %47, %struct.TYPE_4__** %49, align 8
  %50 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %51 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = call i64 @IS_ERR(%struct.TYPE_4__* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %44
  %56 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %57 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = call i32 @PTR_ERR(%struct.TYPE_4__* %58)
  store i32 %59, i32* %6, align 4
  %60 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @fs_err(%struct.gfs2_sbd* %60, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  br label %108

63:                                               ; preds = %44
  %64 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %65 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %64, i32 0, i32 3
  store i64 0, i64* %65, align 8
  %66 = load %struct.inode*, %struct.inode** %7, align 8
  %67 = call i8* @gfs2_lookup_simple(%struct.inode* %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %68 = bitcast i8* %67 to %struct.TYPE_4__*
  %69 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %70 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %69, i32 0, i32 2
  store %struct.TYPE_4__* %68, %struct.TYPE_4__** %70, align 8
  %71 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %72 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %71, i32 0, i32 2
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = call i64 @IS_ERR(%struct.TYPE_4__* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %63
  %77 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %78 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %77, i32 0, i32 2
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = call i32 @PTR_ERR(%struct.TYPE_4__* %79)
  store i32 %80, i32* %6, align 4
  %81 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @fs_err(%struct.gfs2_sbd* %81, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %82)
  br label %101

84:                                               ; preds = %63
  %85 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %86 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %85, i32 0, i32 2
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = call i32 @lockdep_set_class(i32* %88, i32* @gfs2_quota_imutex_key)
  %90 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %91 = call i32 @gfs2_rindex_update(%struct.gfs2_sbd* %90)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %84
  br label %96

95:                                               ; preds = %84
  store i32 0, i32* %3, align 4
  br label %119

96:                                               ; preds = %94, %14
  %97 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %98 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %97, i32 0, i32 2
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = call i32 @iput(%struct.TYPE_4__* %99)
  br label %101

101:                                              ; preds = %96, %76
  %102 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %103 = call i32 @gfs2_clear_rgrpd(%struct.gfs2_sbd* %102)
  %104 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %105 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %104, i32 0, i32 1
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = call i32 @iput(%struct.TYPE_4__* %106)
  br label %108

108:                                              ; preds = %101, %55
  %109 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %110 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %109, i32 0, i32 0
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = call i32 @iput(%struct.TYPE_4__* %111)
  br label %113

113:                                              ; preds = %108, %36
  %114 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %115 = load i32, i32* @UNDO, align 4
  %116 = call i32 @init_journal(%struct.gfs2_sbd* %114, i32 %115)
  br label %117

117:                                              ; preds = %113, %24
  %118 = load i32, i32* %6, align 4
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %117, %95
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local i32 @init_journal(%struct.gfs2_sbd*, i32) #1

declare dso_local i32 @complete_all(i32*) #1

declare dso_local i8* @gfs2_lookup_simple(%struct.inode*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_4__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_4__*) #1

declare dso_local i32 @fs_err(%struct.gfs2_sbd*, i8*, i32) #1

declare dso_local i32 @lockdep_set_class(i32*, i32*) #1

declare dso_local i32 @gfs2_rindex_update(%struct.gfs2_sbd*) #1

declare dso_local i32 @iput(%struct.TYPE_4__*) #1

declare dso_local i32 @gfs2_clear_rgrpd(%struct.gfs2_sbd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
