; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_ceph_common.c_ceph_create_client.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_ceph_common.c_ceph_create_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_client = type { i32, i32, i32, %struct.ceph_options*, i32, i32, i32*, i64, i32, i32, i8* }
%struct.ceph_options = type { %struct.ceph_entity_addr }
%struct.ceph_entity_addr = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CEPH_FEATURES_SUPPORTED_DEFAULT = common dso_local global i32 0, align 4
@CEPH_FEATURES_REQUIRED_DEFAULT = common dso_local global i32 0, align 4
@NOMSGAUTH = common dso_local global i32 0, align 4
@CEPH_FEATURE_MSG_AUTH = common dso_local global i32 0, align 4
@MYIP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ceph_client* @ceph_create_client(%struct.ceph_options* %0, i8* %1) #0 {
  %3 = alloca %struct.ceph_client*, align 8
  %4 = alloca %struct.ceph_options*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ceph_client*, align 8
  %7 = alloca %struct.ceph_entity_addr*, align 8
  %8 = alloca i32, align 4
  store %struct.ceph_options* %0, %struct.ceph_options** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.ceph_entity_addr* null, %struct.ceph_entity_addr** %7, align 8
  %9 = call i32 (...) @wait_for_random_bytes()
  store i32 %9, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* %8, align 4
  %14 = call %struct.ceph_client* @ERR_PTR(i32 %13)
  store %struct.ceph_client* %14, %struct.ceph_client** %3, align 8
  br label %101

15:                                               ; preds = %2
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.ceph_client* @kzalloc(i32 64, i32 %16)
  store %struct.ceph_client* %17, %struct.ceph_client** %6, align 8
  %18 = load %struct.ceph_client*, %struct.ceph_client** %6, align 8
  %19 = icmp eq %struct.ceph_client* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.ceph_client* @ERR_PTR(i32 %22)
  store %struct.ceph_client* %23, %struct.ceph_client** %3, align 8
  br label %101

24:                                               ; preds = %15
  %25 = load i8*, i8** %5, align 8
  %26 = load %struct.ceph_client*, %struct.ceph_client** %6, align 8
  %27 = getelementptr inbounds %struct.ceph_client, %struct.ceph_client* %26, i32 0, i32 10
  store i8* %25, i8** %27, align 8
  %28 = load %struct.ceph_options*, %struct.ceph_options** %4, align 8
  %29 = load %struct.ceph_client*, %struct.ceph_client** %6, align 8
  %30 = getelementptr inbounds %struct.ceph_client, %struct.ceph_client* %29, i32 0, i32 3
  store %struct.ceph_options* %28, %struct.ceph_options** %30, align 8
  %31 = load %struct.ceph_client*, %struct.ceph_client** %6, align 8
  %32 = getelementptr inbounds %struct.ceph_client, %struct.ceph_client* %31, i32 0, i32 9
  %33 = call i32 @mutex_init(i32* %32)
  %34 = load %struct.ceph_client*, %struct.ceph_client** %6, align 8
  %35 = getelementptr inbounds %struct.ceph_client, %struct.ceph_client* %34, i32 0, i32 8
  %36 = call i32 @init_waitqueue_head(i32* %35)
  %37 = load %struct.ceph_client*, %struct.ceph_client** %6, align 8
  %38 = getelementptr inbounds %struct.ceph_client, %struct.ceph_client* %37, i32 0, i32 7
  store i64 0, i64* %38, align 8
  %39 = load %struct.ceph_client*, %struct.ceph_client** %6, align 8
  %40 = getelementptr inbounds %struct.ceph_client, %struct.ceph_client* %39, i32 0, i32 6
  store i32* null, i32** %40, align 8
  %41 = load i32, i32* @CEPH_FEATURES_SUPPORTED_DEFAULT, align 4
  %42 = load %struct.ceph_client*, %struct.ceph_client** %6, align 8
  %43 = getelementptr inbounds %struct.ceph_client, %struct.ceph_client* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @CEPH_FEATURES_REQUIRED_DEFAULT, align 4
  %45 = load %struct.ceph_client*, %struct.ceph_client** %6, align 8
  %46 = getelementptr inbounds %struct.ceph_client, %struct.ceph_client* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 8
  %47 = load %struct.ceph_client*, %struct.ceph_client** %6, align 8
  %48 = load i32, i32* @NOMSGAUTH, align 4
  %49 = call i64 @ceph_test_opt(%struct.ceph_client* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %24
  %52 = load i32, i32* @CEPH_FEATURE_MSG_AUTH, align 4
  %53 = load %struct.ceph_client*, %struct.ceph_client** %6, align 8
  %54 = getelementptr inbounds %struct.ceph_client, %struct.ceph_client* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  br label %57

57:                                               ; preds = %51, %24
  %58 = load %struct.ceph_client*, %struct.ceph_client** %6, align 8
  %59 = load i32, i32* @MYIP, align 4
  %60 = call i64 @ceph_test_opt(%struct.ceph_client* %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.ceph_client*, %struct.ceph_client** %6, align 8
  %64 = getelementptr inbounds %struct.ceph_client, %struct.ceph_client* %63, i32 0, i32 3
  %65 = load %struct.ceph_options*, %struct.ceph_options** %64, align 8
  %66 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %65, i32 0, i32 0
  store %struct.ceph_entity_addr* %66, %struct.ceph_entity_addr** %7, align 8
  br label %67

67:                                               ; preds = %62, %57
  %68 = load %struct.ceph_client*, %struct.ceph_client** %6, align 8
  %69 = getelementptr inbounds %struct.ceph_client, %struct.ceph_client* %68, i32 0, i32 0
  %70 = load %struct.ceph_entity_addr*, %struct.ceph_entity_addr** %7, align 8
  %71 = call i32 @ceph_messenger_init(i32* %69, %struct.ceph_entity_addr* %70)
  %72 = load %struct.ceph_client*, %struct.ceph_client** %6, align 8
  %73 = getelementptr inbounds %struct.ceph_client, %struct.ceph_client* %72, i32 0, i32 1
  %74 = load %struct.ceph_client*, %struct.ceph_client** %6, align 8
  %75 = call i32 @ceph_monc_init(i32* %73, %struct.ceph_client* %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %67
  br label %93

79:                                               ; preds = %67
  %80 = load %struct.ceph_client*, %struct.ceph_client** %6, align 8
  %81 = getelementptr inbounds %struct.ceph_client, %struct.ceph_client* %80, i32 0, i32 2
  %82 = load %struct.ceph_client*, %struct.ceph_client** %6, align 8
  %83 = call i32 @ceph_osdc_init(i32* %81, %struct.ceph_client* %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  br label %89

87:                                               ; preds = %79
  %88 = load %struct.ceph_client*, %struct.ceph_client** %6, align 8
  store %struct.ceph_client* %88, %struct.ceph_client** %3, align 8
  br label %101

89:                                               ; preds = %86
  %90 = load %struct.ceph_client*, %struct.ceph_client** %6, align 8
  %91 = getelementptr inbounds %struct.ceph_client, %struct.ceph_client* %90, i32 0, i32 1
  %92 = call i32 @ceph_monc_stop(i32* %91)
  br label %93

93:                                               ; preds = %89, %78
  %94 = load %struct.ceph_client*, %struct.ceph_client** %6, align 8
  %95 = getelementptr inbounds %struct.ceph_client, %struct.ceph_client* %94, i32 0, i32 0
  %96 = call i32 @ceph_messenger_fini(i32* %95)
  %97 = load %struct.ceph_client*, %struct.ceph_client** %6, align 8
  %98 = call i32 @kfree(%struct.ceph_client* %97)
  %99 = load i32, i32* %8, align 4
  %100 = call %struct.ceph_client* @ERR_PTR(i32 %99)
  store %struct.ceph_client* %100, %struct.ceph_client** %3, align 8
  br label %101

101:                                              ; preds = %93, %87, %20, %12
  %102 = load %struct.ceph_client*, %struct.ceph_client** %3, align 8
  ret %struct.ceph_client* %102
}

declare dso_local i32 @wait_for_random_bytes(...) #1

declare dso_local %struct.ceph_client* @ERR_PTR(i32) #1

declare dso_local %struct.ceph_client* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i64 @ceph_test_opt(%struct.ceph_client*, i32) #1

declare dso_local i32 @ceph_messenger_init(i32*, %struct.ceph_entity_addr*) #1

declare dso_local i32 @ceph_monc_init(i32*, %struct.ceph_client*) #1

declare dso_local i32 @ceph_osdc_init(i32*, %struct.ceph_client*) #1

declare dso_local i32 @ceph_monc_stop(i32*) #1

declare dso_local i32 @ceph_messenger_fini(i32*) #1

declare dso_local i32 @kfree(%struct.ceph_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
