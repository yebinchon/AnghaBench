; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_gfs2_quota_hold.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_quota.c_gfs2_quota_hold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { %struct.TYPE_5__*, %struct.TYPE_6__, i32 }
%struct.TYPE_5__ = type { i32, %struct.gfs2_quota_data** }
%struct.gfs2_quota_data = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.gfs2_sbd = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@GFS2_QUOTA_OFF = common dso_local global i64 0, align 8
@GIF_QD_LOCKED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@NO_UID_QUOTA_CHANGE = common dso_local global i32 0, align 4
@NO_GID_QUOTA_CHANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gfs2_quota_hold(%struct.gfs2_inode* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gfs2_inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.gfs2_sbd*, align 8
  %9 = alloca %struct.gfs2_quota_data**, align 8
  %10 = alloca i32, align 4
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %12 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %11, i32 0, i32 1
  %13 = call %struct.gfs2_sbd* @GFS2_SB(%struct.TYPE_6__* %12)
  store %struct.gfs2_sbd* %13, %struct.gfs2_sbd** %8, align 8
  %14 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %15 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @GFS2_QUOTA_OFF, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %176

21:                                               ; preds = %3
  %22 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %23 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = icmp eq %struct.TYPE_5__* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %28 = call i32 @gfs2_rsqa_alloc(%struct.gfs2_inode* %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %4, align 4
  br label %176

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %21
  %35 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %36 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %38, align 8
  store %struct.gfs2_quota_data** %39, %struct.gfs2_quota_data*** %9, align 8
  %40 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %41 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %42 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i64 @gfs2_assert_warn(%struct.gfs2_sbd* %40, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %62, label %51

51:                                               ; preds = %34
  %52 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %53 = load i32, i32* @GIF_QD_LOCKED, align 4
  %54 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %55 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %54, i32 0, i32 2
  %56 = call i32 @test_bit(i32 %53, i32* %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i64 @gfs2_assert_warn(%struct.gfs2_sbd* %52, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %51, %34
  %63 = load i32, i32* @EIO, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %176

65:                                               ; preds = %51
  %66 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %67 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %68 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @make_kqid_uid(i32 %70)
  %72 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %9, align 8
  %73 = call i32 @qdsb_get(%struct.gfs2_sbd* %66, i32 %71, %struct.gfs2_quota_data** %72)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %65
  br label %168

77:                                               ; preds = %65
  %78 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %79 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %78, i32 0, i32 0
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 8
  %84 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %9, align 8
  %85 = getelementptr inbounds %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %84, i32 1
  store %struct.gfs2_quota_data** %85, %struct.gfs2_quota_data*** %9, align 8
  %86 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %87 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %88 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @make_kqid_gid(i32 %90)
  %92 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %9, align 8
  %93 = call i32 @qdsb_get(%struct.gfs2_sbd* %86, i32 %91, %struct.gfs2_quota_data** %92)
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %77
  br label %168

97:                                               ; preds = %77
  %98 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %99 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %98, i32 0, i32 0
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 8
  %104 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %9, align 8
  %105 = getelementptr inbounds %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %104, i32 1
  store %struct.gfs2_quota_data** %105, %struct.gfs2_quota_data*** %9, align 8
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* @NO_UID_QUOTA_CHANGE, align 4
  %108 = call i32 @uid_eq(i32 %106, i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %136, label %110

110:                                              ; preds = %97
  %111 = load i32, i32* %6, align 4
  %112 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %113 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @uid_eq(i32 %111, i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %136, label %118

118:                                              ; preds = %110
  %119 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @make_kqid_uid(i32 %120)
  %122 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %9, align 8
  %123 = call i32 @qdsb_get(%struct.gfs2_sbd* %119, i32 %121, %struct.gfs2_quota_data** %122)
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* %10, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %118
  br label %168

127:                                              ; preds = %118
  %128 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %129 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %128, i32 0, i32 0
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %131, align 8
  %134 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %9, align 8
  %135 = getelementptr inbounds %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %134, i32 1
  store %struct.gfs2_quota_data** %135, %struct.gfs2_quota_data*** %9, align 8
  br label %136

136:                                              ; preds = %127, %110, %97
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* @NO_GID_QUOTA_CHANGE, align 4
  %139 = call i32 @gid_eq(i32 %137, i32 %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %167, label %141

141:                                              ; preds = %136
  %142 = load i32, i32* %7, align 4
  %143 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %144 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @gid_eq(i32 %142, i32 %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %167, label %149

149:                                              ; preds = %141
  %150 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %8, align 8
  %151 = load i32, i32* %7, align 4
  %152 = call i32 @make_kqid_gid(i32 %151)
  %153 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %9, align 8
  %154 = call i32 @qdsb_get(%struct.gfs2_sbd* %150, i32 %152, %struct.gfs2_quota_data** %153)
  store i32 %154, i32* %10, align 4
  %155 = load i32, i32* %10, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %149
  br label %168

158:                                              ; preds = %149
  %159 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %160 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %159, i32 0, i32 0
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %162, align 8
  %165 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %9, align 8
  %166 = getelementptr inbounds %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %165, i32 1
  store %struct.gfs2_quota_data** %166, %struct.gfs2_quota_data*** %9, align 8
  br label %167

167:                                              ; preds = %158, %141, %136
  br label %168

168:                                              ; preds = %167, %157, %126, %96, %76
  %169 = load i32, i32* %10, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  %172 = load %struct.gfs2_inode*, %struct.gfs2_inode** %5, align 8
  %173 = call i32 @gfs2_quota_unhold(%struct.gfs2_inode* %172)
  br label %174

174:                                              ; preds = %171, %168
  %175 = load i32, i32* %10, align 4
  store i32 %175, i32* %4, align 4
  br label %176

176:                                              ; preds = %174, %62, %31, %20
  %177 = load i32, i32* %4, align 4
  ret i32 %177
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.TYPE_6__*) #1

declare dso_local i32 @gfs2_rsqa_alloc(%struct.gfs2_inode*) #1

declare dso_local i64 @gfs2_assert_warn(%struct.gfs2_sbd*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @qdsb_get(%struct.gfs2_sbd*, i32, %struct.gfs2_quota_data**) #1

declare dso_local i32 @make_kqid_uid(i32) #1

declare dso_local i32 @make_kqid_gid(i32) #1

declare dso_local i32 @uid_eq(i32, i32) #1

declare dso_local i32 @gid_eq(i32, i32) #1

declare dso_local i32 @gfs2_quota_unhold(%struct.gfs2_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
