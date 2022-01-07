; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_feat.c_dccp_feat_push_confirm.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_feat.c_dccp_feat_push_confirm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.dccp_feat_entry = type { i32, i32, %struct.TYPE_3__, i32, i32, i8*, i8* }

@DCCP_RESET_CODE_TOO_BUSY = common dso_local global i32 0, align 4
@FEAT_STABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.list_head*, i8*, i8*, %struct.TYPE_3__*)* @dccp_feat_push_confirm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dccp_feat_push_confirm(%struct.list_head* %0, i8* %1, i8* %2, %struct.TYPE_3__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca %struct.dccp_feat_entry*, align 8
  store %struct.list_head* %0, %struct.list_head** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %9, align 8
  %11 = load %struct.list_head*, %struct.list_head** %6, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = call %struct.dccp_feat_entry* @dccp_feat_entry_new(%struct.list_head* %11, i8* %12, i8* %13)
  store %struct.dccp_feat_entry* %14, %struct.dccp_feat_entry** %10, align 8
  %15 = load %struct.dccp_feat_entry*, %struct.dccp_feat_entry** %10, align 8
  %16 = icmp eq %struct.dccp_feat_entry* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @DCCP_RESET_CODE_TOO_BUSY, align 4
  store i32 %18, i32* %5, align 4
  br label %52

19:                                               ; preds = %4
  %20 = load i8*, i8** %7, align 8
  %21 = load %struct.dccp_feat_entry*, %struct.dccp_feat_entry** %10, align 8
  %22 = getelementptr inbounds %struct.dccp_feat_entry, %struct.dccp_feat_entry* %21, i32 0, i32 6
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load %struct.dccp_feat_entry*, %struct.dccp_feat_entry** %10, align 8
  %25 = getelementptr inbounds %struct.dccp_feat_entry, %struct.dccp_feat_entry* %24, i32 0, i32 5
  store i8* %23, i8** %25, align 8
  %26 = load i32, i32* @FEAT_STABLE, align 4
  %27 = load %struct.dccp_feat_entry*, %struct.dccp_feat_entry** %10, align 8
  %28 = getelementptr inbounds %struct.dccp_feat_entry, %struct.dccp_feat_entry* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 4
  %29 = load %struct.dccp_feat_entry*, %struct.dccp_feat_entry** %10, align 8
  %30 = getelementptr inbounds %struct.dccp_feat_entry, %struct.dccp_feat_entry* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %32 = icmp eq %struct.TYPE_3__* %31, null
  %33 = zext i1 %32 to i32
  %34 = load %struct.dccp_feat_entry*, %struct.dccp_feat_entry** %10, align 8
  %35 = getelementptr inbounds %struct.dccp_feat_entry, %struct.dccp_feat_entry* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 8
  %36 = load %struct.dccp_feat_entry*, %struct.dccp_feat_entry** %10, align 8
  %37 = getelementptr inbounds %struct.dccp_feat_entry, %struct.dccp_feat_entry* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  %39 = load %struct.dccp_feat_entry*, %struct.dccp_feat_entry** %10, align 8
  %40 = getelementptr inbounds %struct.dccp_feat_entry, %struct.dccp_feat_entry* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %19
  %44 = load %struct.dccp_feat_entry*, %struct.dccp_feat_entry** %10, align 8
  %45 = getelementptr inbounds %struct.dccp_feat_entry, %struct.dccp_feat_entry* %44, i32 0, i32 2
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %47 = bitcast %struct.TYPE_3__* %45 to i8*
  %48 = bitcast %struct.TYPE_3__* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 8 %48, i64 8, i1 false)
  br label %49

49:                                               ; preds = %43, %19
  %50 = load %struct.dccp_feat_entry*, %struct.dccp_feat_entry** %10, align 8
  %51 = getelementptr inbounds %struct.dccp_feat_entry, %struct.dccp_feat_entry* %50, i32 0, i32 1
  store i32 0, i32* %51, align 4
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %49, %17
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local %struct.dccp_feat_entry* @dccp_feat_entry_new(%struct.list_head*, i8*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
