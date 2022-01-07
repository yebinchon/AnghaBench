; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_quota_tree.c_qtree_read_dquot.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_quota_tree.c_qtree_read_dquot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtree_mem_dqinfo = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.dquot*, i8*)* }
%struct.dquot = type { i32, i32, %struct.TYPE_9__, %struct.TYPE_10__, i8*, %struct.super_block* }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.super_block = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.super_block*, i32, i8*, i32, i8*)* }

@.str = private unnamed_addr constant [37 x i8] c"Can't read quota structure for id %u\00", align 1
@init_user_ns = common dso_local global i32 0, align 4
@DQ_FAKE_B = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Error while reading quota structure for id %u\00", align 1
@DQST_READS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qtree_read_dquot(%struct.qtree_mem_dqinfo* %0, %struct.dquot* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qtree_mem_dqinfo*, align 8
  %5 = alloca %struct.dquot*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.qtree_mem_dqinfo* %0, %struct.qtree_mem_dqinfo** %4, align 8
  store %struct.dquot* %1, %struct.dquot** %5, align 8
  %11 = load %struct.dquot*, %struct.dquot** %5, align 8
  %12 = getelementptr inbounds %struct.dquot, %struct.dquot* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  %15 = load %struct.dquot*, %struct.dquot** %5, align 8
  %16 = getelementptr inbounds %struct.dquot, %struct.dquot* %15, i32 0, i32 5
  %17 = load %struct.super_block*, %struct.super_block** %16, align 8
  store %struct.super_block* %17, %struct.super_block** %7, align 8
  store i32 0, i32* %10, align 4
  %18 = load %struct.dquot*, %struct.dquot** %5, align 8
  %19 = getelementptr inbounds %struct.dquot, %struct.dquot* %18, i32 0, i32 4
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %55, label %22

22:                                               ; preds = %2
  %23 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %4, align 8
  %24 = load %struct.dquot*, %struct.dquot** %5, align 8
  %25 = call i8* @find_dqentry(%struct.qtree_mem_dqinfo* %23, %struct.dquot* %24)
  store i8* %25, i8** %8, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = icmp ule i8* %26, null
  br i1 %27, label %28, label %51

28:                                               ; preds = %22
  %29 = load i8*, i8** %8, align 8
  %30 = icmp ult i8* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load %struct.super_block*, %struct.super_block** %7, align 8
  %33 = load %struct.dquot*, %struct.dquot** %5, align 8
  %34 = getelementptr inbounds %struct.dquot, %struct.dquot* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @from_kqid(i32* @init_user_ns, i32 %36)
  %38 = call i32 (%struct.super_block*, i8*, ...) @quota_error(%struct.super_block* %32, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %31, %28
  %40 = load %struct.dquot*, %struct.dquot** %5, align 8
  %41 = getelementptr inbounds %struct.dquot, %struct.dquot* %40, i32 0, i32 4
  store i8* null, i8** %41, align 8
  %42 = load i32, i32* @DQ_FAKE_B, align 4
  %43 = load %struct.dquot*, %struct.dquot** %5, align 8
  %44 = getelementptr inbounds %struct.dquot, %struct.dquot* %43, i32 0, i32 1
  %45 = call i32 @set_bit(i32 %42, i32* %44)
  %46 = load %struct.dquot*, %struct.dquot** %5, align 8
  %47 = getelementptr inbounds %struct.dquot, %struct.dquot* %46, i32 0, i32 2
  %48 = call i32 @memset(%struct.TYPE_9__* %47, i32 0, i32 4)
  %49 = load i8*, i8** %8, align 8
  %50 = ptrtoint i8* %49 to i32
  store i32 %50, i32* %10, align 4
  br label %155

51:                                               ; preds = %22
  %52 = load i8*, i8** %8, align 8
  %53 = load %struct.dquot*, %struct.dquot** %5, align 8
  %54 = getelementptr inbounds %struct.dquot, %struct.dquot* %53, i32 0, i32 4
  store i8* %52, i8** %54, align 8
  br label %55

55:                                               ; preds = %51, %2
  %56 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %4, align 8
  %57 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i8* @getdqbuf(i32 %58)
  store i8* %59, i8** %9, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %55
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %159

65:                                               ; preds = %55
  %66 = load %struct.super_block*, %struct.super_block** %7, align 8
  %67 = getelementptr inbounds %struct.super_block, %struct.super_block* %66, i32 0, i32 0
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32 (%struct.super_block*, i32, i8*, i32, i8*)*, i32 (%struct.super_block*, i32, i8*, i32, i8*)** %69, align 8
  %71 = load %struct.super_block*, %struct.super_block** %7, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load i8*, i8** %9, align 8
  %74 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %4, align 8
  %75 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.dquot*, %struct.dquot** %5, align 8
  %78 = getelementptr inbounds %struct.dquot, %struct.dquot* %77, i32 0, i32 4
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 %70(%struct.super_block* %71, i32 %72, i8* %73, i32 %76, i8* %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %4, align 8
  %83 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %81, %84
  br i1 %85, label %86, label %109

86:                                               ; preds = %65
  %87 = load i32, i32* %10, align 4
  %88 = icmp sge i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i32, i32* @EIO, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %10, align 4
  br label %92

92:                                               ; preds = %89, %86
  %93 = load %struct.super_block*, %struct.super_block** %7, align 8
  %94 = load %struct.dquot*, %struct.dquot** %5, align 8
  %95 = getelementptr inbounds %struct.dquot, %struct.dquot* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @from_kqid(i32* @init_user_ns, i32 %97)
  %99 = call i32 (%struct.super_block*, i8*, ...) @quota_error(%struct.super_block* %93, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* @DQ_FAKE_B, align 4
  %101 = load %struct.dquot*, %struct.dquot** %5, align 8
  %102 = getelementptr inbounds %struct.dquot, %struct.dquot* %101, i32 0, i32 1
  %103 = call i32 @set_bit(i32 %100, i32* %102)
  %104 = load %struct.dquot*, %struct.dquot** %5, align 8
  %105 = getelementptr inbounds %struct.dquot, %struct.dquot* %104, i32 0, i32 2
  %106 = call i32 @memset(%struct.TYPE_9__* %105, i32 0, i32 4)
  %107 = load i8*, i8** %9, align 8
  %108 = call i32 @kfree(i8* %107)
  br label %155

109:                                              ; preds = %65
  %110 = load %struct.dquot*, %struct.dquot** %5, align 8
  %111 = getelementptr inbounds %struct.dquot, %struct.dquot* %110, i32 0, i32 0
  %112 = call i32 @spin_lock(i32* %111)
  %113 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %4, align 8
  %114 = getelementptr inbounds %struct.qtree_mem_dqinfo, %struct.qtree_mem_dqinfo* %113, i32 0, i32 1
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i32 (%struct.dquot*, i8*)*, i32 (%struct.dquot*, i8*)** %116, align 8
  %118 = load %struct.dquot*, %struct.dquot** %5, align 8
  %119 = load i8*, i8** %9, align 8
  %120 = call i32 %117(%struct.dquot* %118, i8* %119)
  %121 = load %struct.dquot*, %struct.dquot** %5, align 8
  %122 = getelementptr inbounds %struct.dquot, %struct.dquot* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %149, label %126

126:                                              ; preds = %109
  %127 = load %struct.dquot*, %struct.dquot** %5, align 8
  %128 = getelementptr inbounds %struct.dquot, %struct.dquot* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %149, label %132

132:                                              ; preds = %126
  %133 = load %struct.dquot*, %struct.dquot** %5, align 8
  %134 = getelementptr inbounds %struct.dquot, %struct.dquot* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %149, label %138

138:                                              ; preds = %132
  %139 = load %struct.dquot*, %struct.dquot** %5, align 8
  %140 = getelementptr inbounds %struct.dquot, %struct.dquot* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %149, label %144

144:                                              ; preds = %138
  %145 = load i32, i32* @DQ_FAKE_B, align 4
  %146 = load %struct.dquot*, %struct.dquot** %5, align 8
  %147 = getelementptr inbounds %struct.dquot, %struct.dquot* %146, i32 0, i32 1
  %148 = call i32 @set_bit(i32 %145, i32* %147)
  br label %149

149:                                              ; preds = %144, %138, %132, %126, %109
  %150 = load %struct.dquot*, %struct.dquot** %5, align 8
  %151 = getelementptr inbounds %struct.dquot, %struct.dquot* %150, i32 0, i32 0
  %152 = call i32 @spin_unlock(i32* %151)
  %153 = load i8*, i8** %9, align 8
  %154 = call i32 @kfree(i8* %153)
  br label %155

155:                                              ; preds = %149, %92, %39
  %156 = load i32, i32* @DQST_READS, align 4
  %157 = call i32 @dqstats_inc(i32 %156)
  %158 = load i32, i32* %10, align 4
  store i32 %158, i32* %3, align 4
  br label %159

159:                                              ; preds = %155, %62
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local i8* @find_dqentry(%struct.qtree_mem_dqinfo*, %struct.dquot*) #1

declare dso_local i32 @quota_error(%struct.super_block*, i8*, ...) #1

declare dso_local i32 @from_kqid(i32*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i8* @getdqbuf(i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dqstats_inc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
