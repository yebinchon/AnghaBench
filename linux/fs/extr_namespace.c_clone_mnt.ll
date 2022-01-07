; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namespace.c_clone_mnt.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namespace.c_clone_mnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32, %struct.mount*, i32, i32, i32, i32, %struct.mount*, %struct.TYPE_2__, i32, i64, i32 }
%struct.TYPE_2__ = type { i32, i32, %struct.super_block* }
%struct.super_block = type { i32, i32 }
%struct.dentry = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@CL_SLAVE = common dso_local global i32 0, align 4
@CL_PRIVATE = common dso_local global i32 0, align 4
@CL_SHARED_TO_SLAVE = common dso_local global i32 0, align 4
@CL_MAKE_SHARED = common dso_local global i32 0, align 4
@MNT_WRITE_HOLD = common dso_local global i32 0, align 4
@MNT_MARKED = common dso_local global i32 0, align 4
@MNT_INTERNAL = common dso_local global i32 0, align 4
@CL_EXPIRE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mount* (%struct.mount*, %struct.dentry*, i32)* @clone_mnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mount* @clone_mnt(%struct.mount* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca %struct.mount*, align 8
  %5 = alloca %struct.mount*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca %struct.mount*, align 8
  %10 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.mount*, %struct.mount** %5, align 8
  %12 = getelementptr inbounds %struct.mount, %struct.mount* %11, i32 0, i32 7
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load %struct.super_block*, %struct.super_block** %13, align 8
  store %struct.super_block* %14, %struct.super_block** %8, align 8
  %15 = load %struct.mount*, %struct.mount** %5, align 8
  %16 = getelementptr inbounds %struct.mount, %struct.mount* %15, i32 0, i32 10
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.mount* @alloc_vfsmnt(i32 %17)
  store %struct.mount* %18, %struct.mount** %9, align 8
  %19 = load %struct.mount*, %struct.mount** %9, align 8
  %20 = icmp ne %struct.mount* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.mount* @ERR_PTR(i32 %23)
  store %struct.mount* %24, %struct.mount** %4, align 8
  br label %205

25:                                               ; preds = %3
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @CL_SLAVE, align 4
  %28 = load i32, i32* @CL_PRIVATE, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @CL_SHARED_TO_SLAVE, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %26, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load %struct.mount*, %struct.mount** %9, align 8
  %36 = getelementptr inbounds %struct.mount, %struct.mount* %35, i32 0, i32 9
  store i64 0, i64* %36, align 8
  br label %43

37:                                               ; preds = %25
  %38 = load %struct.mount*, %struct.mount** %5, align 8
  %39 = getelementptr inbounds %struct.mount, %struct.mount* %38, i32 0, i32 9
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.mount*, %struct.mount** %9, align 8
  %42 = getelementptr inbounds %struct.mount, %struct.mount* %41, i32 0, i32 9
  store i64 %40, i64* %42, align 8
  br label %43

43:                                               ; preds = %37, %34
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @CL_MAKE_SHARED, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %43
  %49 = load %struct.mount*, %struct.mount** %9, align 8
  %50 = getelementptr inbounds %struct.mount, %struct.mount* %49, i32 0, i32 9
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %48
  %54 = load %struct.mount*, %struct.mount** %9, align 8
  %55 = call i32 @mnt_alloc_group_id(%struct.mount* %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %198

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %59, %48, %43
  %61 = load %struct.mount*, %struct.mount** %5, align 8
  %62 = getelementptr inbounds %struct.mount, %struct.mount* %61, i32 0, i32 7
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.mount*, %struct.mount** %9, align 8
  %66 = getelementptr inbounds %struct.mount, %struct.mount* %65, i32 0, i32 7
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 8
  %68 = load i32, i32* @MNT_WRITE_HOLD, align 4
  %69 = load i32, i32* @MNT_MARKED, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @MNT_INTERNAL, align 4
  %72 = or i32 %70, %71
  %73 = xor i32 %72, -1
  %74 = load %struct.mount*, %struct.mount** %9, align 8
  %75 = getelementptr inbounds %struct.mount, %struct.mount* %74, i32 0, i32 7
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %77, %73
  store i32 %78, i32* %76, align 8
  %79 = load %struct.super_block*, %struct.super_block** %8, align 8
  %80 = getelementptr inbounds %struct.super_block, %struct.super_block* %79, i32 0, i32 1
  %81 = call i32 @atomic_inc(i32* %80)
  %82 = load %struct.super_block*, %struct.super_block** %8, align 8
  %83 = load %struct.mount*, %struct.mount** %9, align 8
  %84 = getelementptr inbounds %struct.mount, %struct.mount* %83, i32 0, i32 7
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 2
  store %struct.super_block* %82, %struct.super_block** %85, align 8
  %86 = load %struct.dentry*, %struct.dentry** %6, align 8
  %87 = call i32 @dget(%struct.dentry* %86)
  %88 = load %struct.mount*, %struct.mount** %9, align 8
  %89 = getelementptr inbounds %struct.mount, %struct.mount* %88, i32 0, i32 7
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  store i32 %87, i32* %90, align 4
  %91 = load %struct.mount*, %struct.mount** %9, align 8
  %92 = getelementptr inbounds %struct.mount, %struct.mount* %91, i32 0, i32 7
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.mount*, %struct.mount** %9, align 8
  %96 = getelementptr inbounds %struct.mount, %struct.mount* %95, i32 0, i32 8
  store i32 %94, i32* %96, align 8
  %97 = load %struct.mount*, %struct.mount** %9, align 8
  %98 = load %struct.mount*, %struct.mount** %9, align 8
  %99 = getelementptr inbounds %struct.mount, %struct.mount* %98, i32 0, i32 6
  store %struct.mount* %97, %struct.mount** %99, align 8
  %100 = call i32 (...) @lock_mount_hash()
  %101 = load %struct.mount*, %struct.mount** %9, align 8
  %102 = getelementptr inbounds %struct.mount, %struct.mount* %101, i32 0, i32 5
  %103 = load %struct.super_block*, %struct.super_block** %8, align 8
  %104 = getelementptr inbounds %struct.super_block, %struct.super_block* %103, i32 0, i32 0
  %105 = call i32 @list_add_tail(i32* %102, i32* %104)
  %106 = call i32 (...) @unlock_mount_hash()
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @CL_SLAVE, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %120, label %111

111:                                              ; preds = %60
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* @CL_SHARED_TO_SLAVE, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %131

116:                                              ; preds = %111
  %117 = load %struct.mount*, %struct.mount** %5, align 8
  %118 = call i64 @IS_MNT_SHARED(%struct.mount* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %131

120:                                              ; preds = %116, %60
  %121 = load %struct.mount*, %struct.mount** %9, align 8
  %122 = getelementptr inbounds %struct.mount, %struct.mount* %121, i32 0, i32 2
  %123 = load %struct.mount*, %struct.mount** %5, align 8
  %124 = getelementptr inbounds %struct.mount, %struct.mount* %123, i32 0, i32 4
  %125 = call i32 @list_add(i32* %122, i32* %124)
  %126 = load %struct.mount*, %struct.mount** %5, align 8
  %127 = load %struct.mount*, %struct.mount** %9, align 8
  %128 = getelementptr inbounds %struct.mount, %struct.mount* %127, i32 0, i32 1
  store %struct.mount* %126, %struct.mount** %128, align 8
  %129 = load %struct.mount*, %struct.mount** %9, align 8
  %130 = call i32 @CLEAR_MNT_SHARED(%struct.mount* %129)
  br label %171

131:                                              ; preds = %116, %111
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* @CL_PRIVATE, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %167, label %136

136:                                              ; preds = %131
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* @CL_MAKE_SHARED, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %136
  %142 = load %struct.mount*, %struct.mount** %5, align 8
  %143 = call i64 @IS_MNT_SHARED(%struct.mount* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %141, %136
  %146 = load %struct.mount*, %struct.mount** %9, align 8
  %147 = getelementptr inbounds %struct.mount, %struct.mount* %146, i32 0, i32 3
  %148 = load %struct.mount*, %struct.mount** %5, align 8
  %149 = getelementptr inbounds %struct.mount, %struct.mount* %148, i32 0, i32 3
  %150 = call i32 @list_add(i32* %147, i32* %149)
  br label %151

151:                                              ; preds = %145, %141
  %152 = load %struct.mount*, %struct.mount** %5, align 8
  %153 = call i64 @IS_MNT_SLAVE(%struct.mount* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %151
  %156 = load %struct.mount*, %struct.mount** %9, align 8
  %157 = getelementptr inbounds %struct.mount, %struct.mount* %156, i32 0, i32 2
  %158 = load %struct.mount*, %struct.mount** %5, align 8
  %159 = getelementptr inbounds %struct.mount, %struct.mount* %158, i32 0, i32 2
  %160 = call i32 @list_add(i32* %157, i32* %159)
  br label %161

161:                                              ; preds = %155, %151
  %162 = load %struct.mount*, %struct.mount** %5, align 8
  %163 = getelementptr inbounds %struct.mount, %struct.mount* %162, i32 0, i32 1
  %164 = load %struct.mount*, %struct.mount** %163, align 8
  %165 = load %struct.mount*, %struct.mount** %9, align 8
  %166 = getelementptr inbounds %struct.mount, %struct.mount* %165, i32 0, i32 1
  store %struct.mount* %164, %struct.mount** %166, align 8
  br label %170

167:                                              ; preds = %131
  %168 = load %struct.mount*, %struct.mount** %9, align 8
  %169 = call i32 @CLEAR_MNT_SHARED(%struct.mount* %168)
  br label %170

170:                                              ; preds = %167, %161
  br label %171

171:                                              ; preds = %170, %120
  %172 = load i32, i32* %7, align 4
  %173 = load i32, i32* @CL_MAKE_SHARED, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %171
  %177 = load %struct.mount*, %struct.mount** %9, align 8
  %178 = call i32 @set_mnt_shared(%struct.mount* %177)
  br label %179

179:                                              ; preds = %176, %171
  %180 = load i32, i32* %7, align 4
  %181 = load i32, i32* @CL_EXPIRE, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %196

184:                                              ; preds = %179
  %185 = load %struct.mount*, %struct.mount** %5, align 8
  %186 = getelementptr inbounds %struct.mount, %struct.mount* %185, i32 0, i32 0
  %187 = call i32 @list_empty(i32* %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %195, label %189

189:                                              ; preds = %184
  %190 = load %struct.mount*, %struct.mount** %9, align 8
  %191 = getelementptr inbounds %struct.mount, %struct.mount* %190, i32 0, i32 0
  %192 = load %struct.mount*, %struct.mount** %5, align 8
  %193 = getelementptr inbounds %struct.mount, %struct.mount* %192, i32 0, i32 0
  %194 = call i32 @list_add(i32* %191, i32* %193)
  br label %195

195:                                              ; preds = %189, %184
  br label %196

196:                                              ; preds = %195, %179
  %197 = load %struct.mount*, %struct.mount** %9, align 8
  store %struct.mount* %197, %struct.mount** %4, align 8
  br label %205

198:                                              ; preds = %58
  %199 = load %struct.mount*, %struct.mount** %9, align 8
  %200 = call i32 @mnt_free_id(%struct.mount* %199)
  %201 = load %struct.mount*, %struct.mount** %9, align 8
  %202 = call i32 @free_vfsmnt(%struct.mount* %201)
  %203 = load i32, i32* %10, align 4
  %204 = call %struct.mount* @ERR_PTR(i32 %203)
  store %struct.mount* %204, %struct.mount** %4, align 8
  br label %205

205:                                              ; preds = %198, %196, %21
  %206 = load %struct.mount*, %struct.mount** %4, align 8
  ret %struct.mount* %206
}

declare dso_local %struct.mount* @alloc_vfsmnt(i32) #1

declare dso_local %struct.mount* @ERR_PTR(i32) #1

declare dso_local i32 @mnt_alloc_group_id(%struct.mount*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @dget(%struct.dentry*) #1

declare dso_local i32 @lock_mount_hash(...) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @unlock_mount_hash(...) #1

declare dso_local i64 @IS_MNT_SHARED(%struct.mount*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @CLEAR_MNT_SHARED(%struct.mount*) #1

declare dso_local i64 @IS_MNT_SLAVE(%struct.mount*) #1

declare dso_local i32 @set_mnt_shared(%struct.mount*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @mnt_free_id(%struct.mount*) #1

declare dso_local i32 @free_vfsmnt(%struct.mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
