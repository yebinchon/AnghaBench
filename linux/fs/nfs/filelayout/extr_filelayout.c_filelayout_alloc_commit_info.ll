; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/filelayout/extr_filelayout.c_filelayout_alloc_commit_info.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/filelayout/extr_filelayout.c_filelayout_alloc_commit_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnfs_layout_segment = type { i32 }
%struct.nfs_commit_info = type { %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.nfs4_filelayout_segment = type { i64, %struct.TYPE_7__*, i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.pnfs_commit_bucket = type { i32, i32, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@STRIPE_SPARSE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@NFS_INVALID_STABLE_HOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pnfs_layout_segment*, %struct.nfs_commit_info*, i32)* @filelayout_alloc_commit_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filelayout_alloc_commit_info(%struct.pnfs_layout_segment* %0, %struct.nfs_commit_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pnfs_layout_segment*, align 8
  %6 = alloca %struct.nfs_commit_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfs4_filelayout_segment*, align 8
  %9 = alloca %struct.pnfs_commit_bucket*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pnfs_layout_segment* %0, %struct.pnfs_layout_segment** %5, align 8
  store %struct.nfs_commit_info* %1, %struct.nfs_commit_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.pnfs_layout_segment*, %struct.pnfs_layout_segment** %5, align 8
  %13 = call %struct.nfs4_filelayout_segment* @FILELAYOUT_LSEG(%struct.pnfs_layout_segment* %12)
  store %struct.nfs4_filelayout_segment* %13, %struct.nfs4_filelayout_segment** %8, align 8
  %14 = load %struct.nfs4_filelayout_segment*, %struct.nfs4_filelayout_segment** %8, align 8
  %15 = getelementptr inbounds %struct.nfs4_filelayout_segment, %struct.nfs4_filelayout_segment* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %209

19:                                               ; preds = %3
  %20 = load %struct.nfs4_filelayout_segment*, %struct.nfs4_filelayout_segment** %8, align 8
  %21 = getelementptr inbounds %struct.nfs4_filelayout_segment, %struct.nfs4_filelayout_segment* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @STRIPE_SPARSE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load %struct.nfs4_filelayout_segment*, %struct.nfs4_filelayout_segment** %8, align 8
  %27 = getelementptr inbounds %struct.nfs4_filelayout_segment, %struct.nfs4_filelayout_segment* %26, i32 0, i32 1
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  br label %37

31:                                               ; preds = %19
  %32 = load %struct.nfs4_filelayout_segment*, %struct.nfs4_filelayout_segment** %8, align 8
  %33 = getelementptr inbounds %struct.nfs4_filelayout_segment, %struct.nfs4_filelayout_segment* %32, i32 0, i32 1
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  br label %37

37:                                               ; preds = %31, %25
  %38 = phi i32 [ %30, %25 ], [ %36, %31 ]
  store i32 %38, i32* %10, align 4
  %39 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %6, align 8
  %40 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %39, i32 0, i32 1
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = icmp sge i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %209

47:                                               ; preds = %37
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call %struct.pnfs_commit_bucket* @kcalloc(i32 %48, i32 20, i32 %49)
  store %struct.pnfs_commit_bucket* %50, %struct.pnfs_commit_bucket** %9, align 8
  %51 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %9, align 8
  %52 = icmp ne %struct.pnfs_commit_bucket* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %209

56:                                               ; preds = %47
  store i32 0, i32* %11, align 4
  br label %57

57:                                               ; preds = %81, %56
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %84

61:                                               ; preds = %57
  %62 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %9, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %62, i64 %64
  %66 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %65, i32 0, i32 4
  %67 = call i32 @INIT_LIST_HEAD(i32* %66)
  %68 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %9, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %68, i64 %70
  %72 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %71, i32 0, i32 3
  %73 = call i32 @INIT_LIST_HEAD(i32* %72)
  %74 = load i32, i32* @NFS_INVALID_STABLE_HOW, align 4
  %75 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %9, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %75, i64 %77
  %79 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  store i32 %74, i32* %80, align 4
  br label %81

81:                                               ; preds = %61
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %11, align 4
  br label %57

84:                                               ; preds = %57
  %85 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %6, align 8
  %86 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %85, i32 0, i32 0
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = call i32 @spin_lock(i32* %88)
  %90 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %6, align 8
  %91 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %90, i32 0, i32 1
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %10, align 4
  %96 = icmp sge i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %84
  br label %201

98:                                               ; preds = %84
  store i32 0, i32* %11, align 4
  br label %99

99:                                               ; preds = %185, %98
  %100 = load i32, i32* %11, align 4
  %101 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %6, align 8
  %102 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %101, i32 0, i32 1
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp slt i32 %100, %105
  br i1 %106, label %107, label %188

107:                                              ; preds = %99
  %108 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %6, align 8
  %109 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %108, i32 0, i32 1
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %111, align 8
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 4
  %117 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %9, align 8
  %118 = load i32, i32* %11, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %117, i64 %119
  %121 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %120, i32 0, i32 4
  %122 = call i32 @list_splice(i32* %116, i32* %121)
  %123 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %6, align 8
  %124 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %123, i32 0, i32 1
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %126, align 8
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 3
  %132 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %9, align 8
  %133 = load i32, i32* %11, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %132, i64 %134
  %136 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %135, i32 0, i32 3
  %137 = call i32 @list_splice(i32* %131, i32* %136)
  %138 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %6, align 8
  %139 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %138, i32 0, i32 1
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %141, align 8
  %143 = load i32, i32* %11, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %9, align 8
  %150 = load i32, i32* %11, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %149, i64 %151
  %153 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  store i32 %148, i32* %154, align 4
  %155 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %6, align 8
  %156 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %155, i32 0, i32 1
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %158, align 8
  %160 = load i32, i32* %11, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %9, align 8
  %166 = load i32, i32* %11, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %165, i64 %167
  %169 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %168, i32 0, i32 1
  store i32 %164, i32* %169, align 4
  %170 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %6, align 8
  %171 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %170, i32 0, i32 1
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %173, align 8
  %175 = load i32, i32* %11, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %9, align 8
  %181 = load i32, i32* %11, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %180, i64 %182
  %184 = getelementptr inbounds %struct.pnfs_commit_bucket, %struct.pnfs_commit_bucket* %183, i32 0, i32 0
  store i32 %179, i32* %184, align 4
  br label %185

185:                                              ; preds = %107
  %186 = load i32, i32* %11, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %11, align 4
  br label %99

188:                                              ; preds = %99
  %189 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %6, align 8
  %190 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %189, i32 0, i32 1
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %192, align 8
  %194 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %9, align 8
  %195 = call i32 @swap(%struct.TYPE_12__* %193, %struct.pnfs_commit_bucket* %194)
  %196 = load i32, i32* %10, align 4
  %197 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %6, align 8
  %198 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %197, i32 0, i32 1
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 0
  store i32 %196, i32* %200, align 8
  br label %201

201:                                              ; preds = %188, %97
  %202 = load %struct.nfs_commit_info*, %struct.nfs_commit_info** %6, align 8
  %203 = getelementptr inbounds %struct.nfs_commit_info, %struct.nfs_commit_info* %202, i32 0, i32 0
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 0
  %206 = call i32 @spin_unlock(i32* %205)
  %207 = load %struct.pnfs_commit_bucket*, %struct.pnfs_commit_bucket** %9, align 8
  %208 = call i32 @kfree(%struct.pnfs_commit_bucket* %207)
  store i32 0, i32* %4, align 4
  br label %209

209:                                              ; preds = %201, %53, %46, %18
  %210 = load i32, i32* %4, align 4
  ret i32 %210
}

declare dso_local %struct.nfs4_filelayout_segment* @FILELAYOUT_LSEG(%struct.pnfs_layout_segment*) #1

declare dso_local %struct.pnfs_commit_bucket* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_splice(i32*, i32*) #1

declare dso_local i32 @swap(%struct.TYPE_12__*, %struct.pnfs_commit_bucket*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.pnfs_commit_bucket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
