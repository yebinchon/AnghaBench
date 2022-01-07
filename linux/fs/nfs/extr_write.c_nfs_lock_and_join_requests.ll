; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_lock_and_join_requests.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_write.c_nfs_lock_and_join_requests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_page = type { i32, i64, i32, i32, %struct.nfs_page* }
%struct.page = type { i32 }
%struct.inode = type { i32 }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.TYPE_4__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@PG_REMOVE = common dso_local global i32 0, align 4
@PG_INODE_REF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs_page* (%struct.page*)* @nfs_lock_and_join_requests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs_page* @nfs_lock_and_join_requests(%struct.page* %0) #0 {
  %2 = alloca %struct.nfs_page*, align 8
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.nfs_page*, align 8
  %6 = alloca %struct.nfs_page*, align 8
  %7 = alloca %struct.nfs_page*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %3, align 8
  %10 = load %struct.page*, %struct.page** %3, align 8
  %11 = call %struct.TYPE_3__* @page_file_mapping(%struct.page* %10)
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.inode*, %struct.inode** %12, align 8
  store %struct.inode* %13, %struct.inode** %4, align 8
  store %struct.nfs_page* null, %struct.nfs_page** %7, align 8
  br label %14

14:                                               ; preds = %44, %34, %1
  %15 = load %struct.page*, %struct.page** %3, align 8
  %16 = call %struct.nfs_page* @nfs_page_find_head_request(%struct.page* %15)
  store %struct.nfs_page* %16, %struct.nfs_page** %5, align 8
  %17 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %18 = icmp ne %struct.nfs_page* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  store %struct.nfs_page* null, %struct.nfs_page** %2, align 8
  br label %247

20:                                               ; preds = %14
  %21 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %22 = call i32 @nfs_lock_request(%struct.nfs_page* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %20
  %25 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %26 = call i32 @nfs_wait_on_request(%struct.nfs_page* %25)
  store i32 %26, i32* %9, align 4
  %27 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %28 = call i32 @nfs_release_request(%struct.nfs_page* %27)
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* %9, align 4
  %33 = call %struct.nfs_page* @ERR_PTR(i32 %32)
  store %struct.nfs_page* %33, %struct.nfs_page** %2, align 8
  br label %247

34:                                               ; preds = %24
  br label %14

35:                                               ; preds = %20
  %36 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %37 = load %struct.page*, %struct.page** %3, align 8
  %38 = call %struct.nfs_page* @nfs_page_private_request(%struct.page* %37)
  %39 = icmp ne %struct.nfs_page* %36, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load %struct.page*, %struct.page** %3, align 8
  %42 = call i64 @PageSwapCache(%struct.page* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %46 = call i32 @nfs_unlock_and_release_request(%struct.nfs_page* %45)
  br label %14

47:                                               ; preds = %40, %35
  %48 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %49 = call i32 @nfs_page_group_lock(%struct.nfs_page* %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %242

53:                                               ; preds = %47
  %54 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %55 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %8, align 4
  %57 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %58 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %57, i32 0, i32 4
  %59 = load %struct.nfs_page*, %struct.nfs_page** %58, align 8
  store %struct.nfs_page* %59, %struct.nfs_page** %6, align 8
  br label %60

60:                                               ; preds = %173, %53
  %61 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %62 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %63 = icmp ne %struct.nfs_page* %61, %62
  br i1 %63, label %64, label %177

64:                                               ; preds = %60
  %65 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %66 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %65, i32 0, i32 2
  %67 = call i32 @kref_get_unless_zero(i32* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %87, label %69

69:                                               ; preds = %64
  %70 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %71 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %74 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = zext i32 %76 to i64
  %78 = add nsw i64 %75, %77
  %79 = icmp eq i64 %72, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %69
  %81 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %82 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = add i32 %84, %83
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %80, %69
  br label %173

87:                                               ; preds = %64
  br label %88

88:                                               ; preds = %113, %87
  %89 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %90 = call i32 @nfs_lock_request(%struct.nfs_page* %89)
  %91 = icmp ne i32 %90, 0
  %92 = xor i1 %91, true
  br i1 %92, label %93, label %114

93:                                               ; preds = %88
  %94 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %95 = call i32 @nfs_page_group_unlock(%struct.nfs_page* %94)
  %96 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %97 = call i32 @nfs_wait_on_request(%struct.nfs_page* %96)
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %93
  %101 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %102 = call i32 @nfs_page_group_lock(%struct.nfs_page* %101)
  store i32 %102, i32* %9, align 4
  br label %103

103:                                              ; preds = %100, %93
  %104 = load i32, i32* %9, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %103
  %107 = load %struct.inode*, %struct.inode** %4, align 8
  %108 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %109 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %110 = call i32 @nfs_unroll_locks(%struct.inode* %107, %struct.nfs_page* %108, %struct.nfs_page* %109)
  %111 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %112 = call i32 @nfs_release_request(%struct.nfs_page* %111)
  br label %242

113:                                              ; preds = %103
  br label %88

114:                                              ; preds = %88
  %115 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %116 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %119 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i32, i32* %8, align 4
  %122 = zext i32 %121 to i64
  %123 = add nsw i64 %120, %122
  %124 = icmp eq i64 %117, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %114
  %126 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %127 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %8, align 4
  %130 = add i32 %129, %128
  store i32 %130, i32* %8, align 4
  br label %172

131:                                              ; preds = %114
  %132 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %133 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %136 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = icmp slt i64 %134, %137
  br i1 %138, label %155, label %139

139:                                              ; preds = %131
  %140 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %141 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %144 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = zext i32 %145 to i64
  %147 = add nsw i64 %142, %146
  %148 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %149 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load i32, i32* %8, align 4
  %152 = zext i32 %151 to i64
  %153 = add nsw i64 %150, %152
  %154 = icmp sgt i64 %147, %153
  br label %155

155:                                              ; preds = %139, %131
  %156 = phi i1 [ true, %131 ], [ %154, %139 ]
  %157 = zext i1 %156 to i32
  %158 = call i64 @WARN_ON_ONCE(i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %171

160:                                              ; preds = %155
  %161 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %162 = call i32 @nfs_page_group_unlock(%struct.nfs_page* %161)
  %163 = load %struct.inode*, %struct.inode** %4, align 8
  %164 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %165 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %166 = call i32 @nfs_unroll_locks(%struct.inode* %163, %struct.nfs_page* %164, %struct.nfs_page* %165)
  %167 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %168 = call i32 @nfs_unlock_and_release_request(%struct.nfs_page* %167)
  %169 = load i32, i32* @EIO, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %9, align 4
  br label %242

171:                                              ; preds = %155
  br label %172

172:                                              ; preds = %171, %125
  br label %173

173:                                              ; preds = %172, %86
  %174 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %175 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %174, i32 0, i32 4
  %176 = load %struct.nfs_page*, %struct.nfs_page** %175, align 8
  store %struct.nfs_page* %176, %struct.nfs_page** %6, align 8
  br label %60

177:                                              ; preds = %60
  %178 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  store %struct.nfs_page* %178, %struct.nfs_page** %6, align 8
  br label %179

179:                                              ; preds = %185, %177
  %180 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %181 = call i32 @nfs_clear_request_commit(%struct.nfs_page* %180)
  %182 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %183 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %182, i32 0, i32 4
  %184 = load %struct.nfs_page*, %struct.nfs_page** %183, align 8
  store %struct.nfs_page* %184, %struct.nfs_page** %6, align 8
  br label %185

185:                                              ; preds = %179
  %186 = load %struct.nfs_page*, %struct.nfs_page** %6, align 8
  %187 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %188 = icmp ne %struct.nfs_page* %186, %187
  br i1 %188, label %179, label %189

189:                                              ; preds = %185
  %190 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %191 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %190, i32 0, i32 4
  %192 = load %struct.nfs_page*, %struct.nfs_page** %191, align 8
  %193 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %194 = icmp ne %struct.nfs_page* %192, %193
  br i1 %194, label %195, label %205

195:                                              ; preds = %189
  %196 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %197 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %196, i32 0, i32 4
  %198 = load %struct.nfs_page*, %struct.nfs_page** %197, align 8
  store %struct.nfs_page* %198, %struct.nfs_page** %7, align 8
  %199 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %200 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %201 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %200, i32 0, i32 4
  store %struct.nfs_page* %199, %struct.nfs_page** %201, align 8
  %202 = load i32, i32* %8, align 4
  %203 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %204 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %203, i32 0, i32 0
  store i32 %202, i32* %204, align 8
  br label %205

205:                                              ; preds = %195, %189
  %206 = load i32, i32* @PG_REMOVE, align 4
  %207 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %208 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %207, i32 0, i32 3
  %209 = call i64 @test_and_clear_bit(i32 %206, i32* %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %223

211:                                              ; preds = %205
  %212 = load i32, i32* @PG_INODE_REF, align 4
  %213 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %214 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %213, i32 0, i32 3
  %215 = call i32 @set_bit(i32 %212, i32* %214)
  %216 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %217 = getelementptr inbounds %struct.nfs_page, %struct.nfs_page* %216, i32 0, i32 2
  %218 = call i32 @kref_get(i32* %217)
  %219 = load %struct.inode*, %struct.inode** %4, align 8
  %220 = call %struct.TYPE_4__* @NFS_I(%struct.inode* %219)
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 0
  %222 = call i32 @atomic_long_inc(i32* %221)
  br label %223

223:                                              ; preds = %211, %205
  %224 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %225 = call i32 @nfs_page_group_unlock(%struct.nfs_page* %224)
  %226 = load %struct.nfs_page*, %struct.nfs_page** %7, align 8
  %227 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %228 = load %struct.inode*, %struct.inode** %4, align 8
  %229 = call i32 @nfs_destroy_unlinked_subrequests(%struct.nfs_page* %226, %struct.nfs_page* %227, %struct.inode* %228)
  %230 = load %struct.page*, %struct.page** %3, align 8
  %231 = call i64 @PagePrivate(%struct.page* %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %240, label %233

233:                                              ; preds = %223
  %234 = load %struct.page*, %struct.page** %3, align 8
  %235 = call i64 @PageSwapCache(%struct.page* %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %240, label %237

237:                                              ; preds = %233
  %238 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %239 = call i32 @nfs_unlock_and_release_request(%struct.nfs_page* %238)
  store %struct.nfs_page* null, %struct.nfs_page** %2, align 8
  br label %247

240:                                              ; preds = %233, %223
  %241 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  store %struct.nfs_page* %241, %struct.nfs_page** %2, align 8
  br label %247

242:                                              ; preds = %160, %106, %52
  %243 = load %struct.nfs_page*, %struct.nfs_page** %5, align 8
  %244 = call i32 @nfs_unlock_and_release_request(%struct.nfs_page* %243)
  %245 = load i32, i32* %9, align 4
  %246 = call %struct.nfs_page* @ERR_PTR(i32 %245)
  store %struct.nfs_page* %246, %struct.nfs_page** %2, align 8
  br label %247

247:                                              ; preds = %242, %240, %237, %31, %19
  %248 = load %struct.nfs_page*, %struct.nfs_page** %2, align 8
  ret %struct.nfs_page* %248
}

declare dso_local %struct.TYPE_3__* @page_file_mapping(%struct.page*) #1

declare dso_local %struct.nfs_page* @nfs_page_find_head_request(%struct.page*) #1

declare dso_local i32 @nfs_lock_request(%struct.nfs_page*) #1

declare dso_local i32 @nfs_wait_on_request(%struct.nfs_page*) #1

declare dso_local i32 @nfs_release_request(%struct.nfs_page*) #1

declare dso_local %struct.nfs_page* @ERR_PTR(i32) #1

declare dso_local %struct.nfs_page* @nfs_page_private_request(%struct.page*) #1

declare dso_local i64 @PageSwapCache(%struct.page*) #1

declare dso_local i32 @nfs_unlock_and_release_request(%struct.nfs_page*) #1

declare dso_local i32 @nfs_page_group_lock(%struct.nfs_page*) #1

declare dso_local i32 @kref_get_unless_zero(i32*) #1

declare dso_local i32 @nfs_page_group_unlock(%struct.nfs_page*) #1

declare dso_local i32 @nfs_unroll_locks(%struct.inode*, %struct.nfs_page*, %struct.nfs_page*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @nfs_clear_request_commit(%struct.nfs_page*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @atomic_long_inc(i32*) #1

declare dso_local %struct.TYPE_4__* @NFS_I(%struct.inode*) #1

declare dso_local i32 @nfs_destroy_unlinked_subrequests(%struct.nfs_page*, %struct.nfs_page*, %struct.inode*) #1

declare dso_local i64 @PagePrivate(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
