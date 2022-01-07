; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_resolve_and_create_bundle.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xfrm_resolve_and_create_bundle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_dst = type { i32, i32, i32, i32 }
%struct.xfrm_policy = type { i32 }
%struct.flowi = type { i32 }
%struct.dst_entry = type { i32 }
%struct.net = type { i32 }
%struct.xfrm_state = type { i32 }

@XFRM_MAX_DEPTH = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@LINUX_MIB_XFRMOUTPOLERROR = common dso_local global i32 0, align 4
@LINUX_MIB_XFRMOUTBUNDLEGENERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xfrm_dst* (%struct.xfrm_policy**, i32, %struct.flowi*, i32, %struct.dst_entry*)* @xfrm_resolve_and_create_bundle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xfrm_dst* @xfrm_resolve_and_create_bundle(%struct.xfrm_policy** %0, i32 %1, %struct.flowi* %2, i32 %3, %struct.dst_entry* %4) #0 {
  %6 = alloca %struct.xfrm_dst*, align 8
  %7 = alloca %struct.xfrm_policy**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.flowi*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dst_entry*, align 8
  %12 = alloca %struct.net*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.xfrm_dst*, align 8
  %17 = alloca %struct.dst_entry*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.xfrm_policy** %0, %struct.xfrm_policy*** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.flowi* %2, %struct.flowi** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.dst_entry* %4, %struct.dst_entry** %11, align 8
  %20 = load %struct.xfrm_policy**, %struct.xfrm_policy*** %7, align 8
  %21 = getelementptr inbounds %struct.xfrm_policy*, %struct.xfrm_policy** %20, i64 0
  %22 = load %struct.xfrm_policy*, %struct.xfrm_policy** %21, align 8
  %23 = call %struct.net* @xp_net(%struct.xfrm_policy* %22)
  store %struct.net* %23, %struct.net** %12, align 8
  %24 = load i32, i32* @XFRM_MAX_DEPTH, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %13, align 8
  %27 = alloca %struct.xfrm_state*, i64 %25, align 16
  store i64 %25, i64* %14, align 8
  %28 = load i32, i32* @XFRM_MAX_DEPTH, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca %struct.xfrm_dst*, i64 %29, align 16
  store i64 %29, i64* %15, align 8
  %31 = load %struct.xfrm_policy**, %struct.xfrm_policy*** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.flowi*, %struct.flowi** %9, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @xfrm_tmpl_resolve(%struct.xfrm_policy** %31, i32 %32, %struct.flowi* %33, %struct.xfrm_state** %27, i32 %34)
  store i32 %35, i32* %18, align 4
  %36 = load i32, i32* %18, align 4
  %37 = icmp sle i32 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %5
  %39 = load i32, i32* %18, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store %struct.xfrm_dst* null, %struct.xfrm_dst** %6, align 8
  store i32 1, i32* %19, align 4
  br label %97

42:                                               ; preds = %38
  %43 = load i32, i32* %18, align 4
  %44 = load i32, i32* @EAGAIN, align 4
  %45 = sub nsw i32 0, %44
  %46 = icmp ne i32 %43, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.net*, %struct.net** %12, align 8
  %49 = load i32, i32* @LINUX_MIB_XFRMOUTPOLERROR, align 4
  %50 = call i32 @XFRM_INC_STATS(%struct.net* %48, i32 %49)
  br label %51

51:                                               ; preds = %47, %42
  %52 = load i32, i32* %18, align 4
  %53 = call %struct.xfrm_dst* @ERR_PTR(i32 %52)
  store %struct.xfrm_dst* %53, %struct.xfrm_dst** %6, align 8
  store i32 1, i32* %19, align 4
  br label %97

54:                                               ; preds = %5
  %55 = load %struct.xfrm_policy**, %struct.xfrm_policy*** %7, align 8
  %56 = getelementptr inbounds %struct.xfrm_policy*, %struct.xfrm_policy** %55, i64 0
  %57 = load %struct.xfrm_policy*, %struct.xfrm_policy** %56, align 8
  %58 = load i32, i32* %18, align 4
  %59 = load %struct.flowi*, %struct.flowi** %9, align 8
  %60 = load %struct.dst_entry*, %struct.dst_entry** %11, align 8
  %61 = call %struct.dst_entry* @xfrm_bundle_create(%struct.xfrm_policy* %57, %struct.xfrm_state** %27, %struct.xfrm_dst** %30, i32 %58, %struct.flowi* %59, %struct.dst_entry* %60)
  store %struct.dst_entry* %61, %struct.dst_entry** %17, align 8
  %62 = load %struct.dst_entry*, %struct.dst_entry** %17, align 8
  %63 = call i64 @IS_ERR(%struct.dst_entry* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %54
  %66 = load %struct.net*, %struct.net** %12, align 8
  %67 = load i32, i32* @LINUX_MIB_XFRMOUTBUNDLEGENERROR, align 4
  %68 = call i32 @XFRM_INC_STATS(%struct.net* %66, i32 %67)
  %69 = load %struct.dst_entry*, %struct.dst_entry** %17, align 8
  %70 = call %struct.xfrm_dst* @ERR_CAST(%struct.dst_entry* %69)
  store %struct.xfrm_dst* %70, %struct.xfrm_dst** %6, align 8
  store i32 1, i32* %19, align 4
  br label %97

71:                                               ; preds = %54
  %72 = load %struct.dst_entry*, %struct.dst_entry** %17, align 8
  %73 = bitcast %struct.dst_entry* %72 to %struct.xfrm_dst*
  store %struct.xfrm_dst* %73, %struct.xfrm_dst** %16, align 8
  %74 = load i32, i32* %18, align 4
  %75 = load %struct.xfrm_dst*, %struct.xfrm_dst** %16, align 8
  %76 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.xfrm_dst*, %struct.xfrm_dst** %16, align 8
  %79 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load %struct.xfrm_dst*, %struct.xfrm_dst** %16, align 8
  %81 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.xfrm_policy**, %struct.xfrm_policy*** %7, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = mul i64 8, %85
  %87 = trunc i64 %86 to i32
  %88 = call i32 @memcpy(i32 %82, %struct.xfrm_policy** %83, i32 %87)
  %89 = load %struct.xfrm_policy**, %struct.xfrm_policy*** %7, align 8
  %90 = getelementptr inbounds %struct.xfrm_policy*, %struct.xfrm_policy** %89, i64 0
  %91 = load %struct.xfrm_policy*, %struct.xfrm_policy** %90, align 8
  %92 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %91, i32 0, i32 0
  %93 = call i32 @atomic_read(i32* %92)
  %94 = load %struct.xfrm_dst*, %struct.xfrm_dst** %16, align 8
  %95 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 4
  %96 = load %struct.xfrm_dst*, %struct.xfrm_dst** %16, align 8
  store %struct.xfrm_dst* %96, %struct.xfrm_dst** %6, align 8
  store i32 1, i32* %19, align 4
  br label %97

97:                                               ; preds = %71, %65, %51, %41
  %98 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %98)
  %99 = load %struct.xfrm_dst*, %struct.xfrm_dst** %6, align 8
  ret %struct.xfrm_dst* %99
}

declare dso_local %struct.net* @xp_net(%struct.xfrm_policy*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @xfrm_tmpl_resolve(%struct.xfrm_policy**, i32, %struct.flowi*, %struct.xfrm_state**, i32) #1

declare dso_local i32 @XFRM_INC_STATS(%struct.net*, i32) #1

declare dso_local %struct.xfrm_dst* @ERR_PTR(i32) #1

declare dso_local %struct.dst_entry* @xfrm_bundle_create(%struct.xfrm_policy*, %struct.xfrm_state**, %struct.xfrm_dst**, i32, %struct.flowi*, %struct.dst_entry*) #1

declare dso_local i64 @IS_ERR(%struct.dst_entry*) #1

declare dso_local %struct.xfrm_dst* @ERR_CAST(%struct.dst_entry*) #1

declare dso_local i32 @memcpy(i32, %struct.xfrm_policy**, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
