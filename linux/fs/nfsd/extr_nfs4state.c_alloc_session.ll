; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_alloc_session.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_alloc_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_session = type { %struct.nfsd4_session**, i32, i32 }
%struct.nfsd4_channel_attrs = type { i32 }

@NFSD_MAX_SLOTS_PER_SESSION = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfsd4_session* (%struct.nfsd4_channel_attrs*, %struct.nfsd4_channel_attrs*)* @alloc_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfsd4_session* @alloc_session(%struct.nfsd4_channel_attrs* %0, %struct.nfsd4_channel_attrs* %1) #0 {
  %3 = alloca %struct.nfsd4_session*, align 8
  %4 = alloca %struct.nfsd4_channel_attrs*, align 8
  %5 = alloca %struct.nfsd4_channel_attrs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfsd4_session*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nfsd4_channel_attrs* %0, %struct.nfsd4_channel_attrs** %4, align 8
  store %struct.nfsd4_channel_attrs* %1, %struct.nfsd4_channel_attrs** %5, align 8
  %11 = load %struct.nfsd4_channel_attrs*, %struct.nfsd4_channel_attrs** %4, align 8
  %12 = getelementptr inbounds %struct.nfsd4_channel_attrs, %struct.nfsd4_channel_attrs* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.nfsd4_channel_attrs*, %struct.nfsd4_channel_attrs** %4, align 8
  %15 = call i32 @slot_bytes(%struct.nfsd4_channel_attrs* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @NFSD_MAX_SLOTS_PER_SESSION, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 8
  %19 = add i64 %18, 16
  %20 = load i32, i32* @PAGE_SIZE, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp ugt i64 %19, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUILD_BUG_ON(i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 8
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = add i64 16, %30
  %32 = trunc i64 %31 to i32
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i8* @kzalloc(i32 %32, i32 %33)
  %35 = bitcast i8* %34 to %struct.nfsd4_session*
  store %struct.nfsd4_session* %35, %struct.nfsd4_session** %8, align 8
  %36 = load %struct.nfsd4_session*, %struct.nfsd4_session** %8, align 8
  %37 = icmp ne %struct.nfsd4_session* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %2
  store %struct.nfsd4_session* null, %struct.nfsd4_session** %3, align 8
  br label %95

39:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  br label %40

40:                                               ; preds = %65, %39
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %68

44:                                               ; preds = %40
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call i8* @kzalloc(i32 %45, i32 %46)
  %48 = bitcast i8* %47 to %struct.nfsd4_session*
  %49 = load %struct.nfsd4_session*, %struct.nfsd4_session** %8, align 8
  %50 = getelementptr inbounds %struct.nfsd4_session, %struct.nfsd4_session* %49, i32 0, i32 0
  %51 = load %struct.nfsd4_session**, %struct.nfsd4_session*** %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.nfsd4_session*, %struct.nfsd4_session** %51, i64 %53
  store %struct.nfsd4_session* %48, %struct.nfsd4_session** %54, align 8
  %55 = load %struct.nfsd4_session*, %struct.nfsd4_session** %8, align 8
  %56 = getelementptr inbounds %struct.nfsd4_session, %struct.nfsd4_session* %55, i32 0, i32 0
  %57 = load %struct.nfsd4_session**, %struct.nfsd4_session*** %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.nfsd4_session*, %struct.nfsd4_session** %57, i64 %59
  %61 = load %struct.nfsd4_session*, %struct.nfsd4_session** %60, align 8
  %62 = icmp ne %struct.nfsd4_session* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %44
  br label %78

64:                                               ; preds = %44
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %10, align 4
  br label %40

68:                                               ; preds = %40
  %69 = load %struct.nfsd4_session*, %struct.nfsd4_session** %8, align 8
  %70 = getelementptr inbounds %struct.nfsd4_session, %struct.nfsd4_session* %69, i32 0, i32 2
  %71 = load %struct.nfsd4_channel_attrs*, %struct.nfsd4_channel_attrs** %4, align 8
  %72 = call i32 @memcpy(i32* %70, %struct.nfsd4_channel_attrs* %71, i32 4)
  %73 = load %struct.nfsd4_session*, %struct.nfsd4_session** %8, align 8
  %74 = getelementptr inbounds %struct.nfsd4_session, %struct.nfsd4_session* %73, i32 0, i32 1
  %75 = load %struct.nfsd4_channel_attrs*, %struct.nfsd4_channel_attrs** %5, align 8
  %76 = call i32 @memcpy(i32* %74, %struct.nfsd4_channel_attrs* %75, i32 4)
  %77 = load %struct.nfsd4_session*, %struct.nfsd4_session** %8, align 8
  store %struct.nfsd4_session* %77, %struct.nfsd4_session** %3, align 8
  br label %95

78:                                               ; preds = %63
  br label %79

79:                                               ; preds = %83, %78
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %10, align 4
  %82 = icmp ne i32 %80, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %79
  %84 = load %struct.nfsd4_session*, %struct.nfsd4_session** %8, align 8
  %85 = getelementptr inbounds %struct.nfsd4_session, %struct.nfsd4_session* %84, i32 0, i32 0
  %86 = load %struct.nfsd4_session**, %struct.nfsd4_session*** %85, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.nfsd4_session*, %struct.nfsd4_session** %86, i64 %88
  %90 = load %struct.nfsd4_session*, %struct.nfsd4_session** %89, align 8
  %91 = call i32 @kfree(%struct.nfsd4_session* %90)
  br label %79

92:                                               ; preds = %79
  %93 = load %struct.nfsd4_session*, %struct.nfsd4_session** %8, align 8
  %94 = call i32 @kfree(%struct.nfsd4_session* %93)
  store %struct.nfsd4_session* null, %struct.nfsd4_session** %3, align 8
  br label %95

95:                                               ; preds = %92, %68, %38
  %96 = load %struct.nfsd4_session*, %struct.nfsd4_session** %3, align 8
  ret %struct.nfsd4_session* %96
}

declare dso_local i32 @slot_bytes(%struct.nfsd4_channel_attrs*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.nfsd4_channel_attrs*, i32) #1

declare dso_local i32 @kfree(%struct.nfsd4_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
