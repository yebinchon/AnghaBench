; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_feat.c_dccp_feat_push_change.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_feat.c_dccp_feat_push_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.dccp_feat_entry = type { i32, i32, i8*, i32, i32, i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@FEAT_INITIALISING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.list_head*, i8*, i8*, i8*, i32*)* @dccp_feat_push_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dccp_feat_push_change(%struct.list_head* %0, i8* %1, i8* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.dccp_feat_entry*, align 8
  store %struct.list_head* %0, %struct.list_head** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load %struct.list_head*, %struct.list_head** %7, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = call %struct.dccp_feat_entry* @dccp_feat_entry_new(%struct.list_head* %13, i8* %14, i8* %15)
  store %struct.dccp_feat_entry* %16, %struct.dccp_feat_entry** %12, align 8
  %17 = load %struct.dccp_feat_entry*, %struct.dccp_feat_entry** %12, align 8
  %18 = icmp eq %struct.dccp_feat_entry* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %43

22:                                               ; preds = %5
  %23 = load i8*, i8** %8, align 8
  %24 = load %struct.dccp_feat_entry*, %struct.dccp_feat_entry** %12, align 8
  %25 = getelementptr inbounds %struct.dccp_feat_entry, %struct.dccp_feat_entry* %24, i32 0, i32 6
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = load %struct.dccp_feat_entry*, %struct.dccp_feat_entry** %12, align 8
  %28 = getelementptr inbounds %struct.dccp_feat_entry, %struct.dccp_feat_entry* %27, i32 0, i32 5
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* @FEAT_INITIALISING, align 4
  %30 = load %struct.dccp_feat_entry*, %struct.dccp_feat_entry** %12, align 8
  %31 = getelementptr inbounds %struct.dccp_feat_entry, %struct.dccp_feat_entry* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 4
  %32 = load %struct.dccp_feat_entry*, %struct.dccp_feat_entry** %12, align 8
  %33 = getelementptr inbounds %struct.dccp_feat_entry, %struct.dccp_feat_entry* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  %34 = load %struct.dccp_feat_entry*, %struct.dccp_feat_entry** %12, align 8
  %35 = getelementptr inbounds %struct.dccp_feat_entry, %struct.dccp_feat_entry* %34, i32 0, i32 1
  store i32 0, i32* %35, align 4
  %36 = load i32*, i32** %11, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.dccp_feat_entry*, %struct.dccp_feat_entry** %12, align 8
  %39 = getelementptr inbounds %struct.dccp_feat_entry, %struct.dccp_feat_entry* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = load %struct.dccp_feat_entry*, %struct.dccp_feat_entry** %12, align 8
  %42 = getelementptr inbounds %struct.dccp_feat_entry, %struct.dccp_feat_entry* %41, i32 0, i32 2
  store i8* %40, i8** %42, align 8
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %22, %19
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local %struct.dccp_feat_entry* @dccp_feat_entry_new(%struct.list_head*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
