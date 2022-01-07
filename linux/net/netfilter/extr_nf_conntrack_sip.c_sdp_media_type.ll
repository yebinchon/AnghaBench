; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_sip.c_sdp_media_type.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_sip.c_sdp_media_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdp_media_type = type { i32, i32 }

@sdp_media_types = common dso_local global %struct.sdp_media_type* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sdp_media_type* (i8*, i32, i32)* @sdp_media_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sdp_media_type* @sdp_media_type(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sdp_media_type*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sdp_media_type*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %10

10:                                               ; preds = %41, %3
  %11 = load i32, i32* %9, align 4
  %12 = load %struct.sdp_media_type*, %struct.sdp_media_type** @sdp_media_types, align 8
  %13 = call i32 @ARRAY_SIZE(%struct.sdp_media_type* %12)
  %14 = icmp ult i32 %11, %13
  br i1 %14, label %15, label %44

15:                                               ; preds = %10
  %16 = load %struct.sdp_media_type*, %struct.sdp_media_type** @sdp_media_types, align 8
  %17 = load i32, i32* %9, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.sdp_media_type, %struct.sdp_media_type* %16, i64 %18
  store %struct.sdp_media_type* %19, %struct.sdp_media_type** %8, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.sdp_media_type*, %struct.sdp_media_type** %8, align 8
  %22 = getelementptr inbounds %struct.sdp_media_type, %struct.sdp_media_type* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ult i32 %20, %23
  br i1 %24, label %38, label %25

25:                                               ; preds = %15
  %26 = load i8*, i8** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load %struct.sdp_media_type*, %struct.sdp_media_type** %8, align 8
  %31 = getelementptr inbounds %struct.sdp_media_type, %struct.sdp_media_type* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.sdp_media_type*, %struct.sdp_media_type** %8, align 8
  %34 = getelementptr inbounds %struct.sdp_media_type, %struct.sdp_media_type* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @strncmp(i8* %29, i32 %32, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %25, %15
  br label %41

39:                                               ; preds = %25
  %40 = load %struct.sdp_media_type*, %struct.sdp_media_type** %8, align 8
  store %struct.sdp_media_type* %40, %struct.sdp_media_type** %4, align 8
  br label %45

41:                                               ; preds = %38
  %42 = load i32, i32* %9, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %9, align 4
  br label %10

44:                                               ; preds = %10
  store %struct.sdp_media_type* null, %struct.sdp_media_type** %4, align 8
  br label %45

45:                                               ; preds = %44, %39
  %46 = load %struct.sdp_media_type*, %struct.sdp_media_type** %4, align 8
  ret %struct.sdp_media_type* %46
}

declare dso_local i32 @ARRAY_SIZE(%struct.sdp_media_type*) #1

declare dso_local i64 @strncmp(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
