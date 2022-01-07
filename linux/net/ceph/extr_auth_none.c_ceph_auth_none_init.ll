; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_auth_none.c_ceph_auth_none_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_auth_none.c_ceph_auth_none_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_auth_client = type { i32*, %struct.ceph_auth_none_info*, i32 }
%struct.ceph_auth_none_info = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"ceph_auth_none_init %p\0A\00", align 1
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CEPH_AUTH_NONE = common dso_local global i32 0, align 4
@ceph_auth_none_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_auth_none_init(%struct.ceph_auth_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ceph_auth_client*, align 8
  %4 = alloca %struct.ceph_auth_none_info*, align 8
  store %struct.ceph_auth_client* %0, %struct.ceph_auth_client** %3, align 8
  %5 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %3, align 8
  %6 = call i32 @dout(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.ceph_auth_client* %5)
  %7 = load i32, i32* @GFP_NOFS, align 4
  %8 = call %struct.ceph_auth_none_info* @kzalloc(i32 4, i32 %7)
  store %struct.ceph_auth_none_info* %8, %struct.ceph_auth_none_info** %4, align 8
  %9 = load %struct.ceph_auth_none_info*, %struct.ceph_auth_none_info** %4, align 8
  %10 = icmp ne %struct.ceph_auth_none_info* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %25

14:                                               ; preds = %1
  %15 = load %struct.ceph_auth_none_info*, %struct.ceph_auth_none_info** %4, align 8
  %16 = getelementptr inbounds %struct.ceph_auth_none_info, %struct.ceph_auth_none_info* %15, i32 0, i32 0
  store i32 1, i32* %16, align 4
  %17 = load i32, i32* @CEPH_AUTH_NONE, align 4
  %18 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %3, align 8
  %19 = getelementptr inbounds %struct.ceph_auth_client, %struct.ceph_auth_client* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load %struct.ceph_auth_none_info*, %struct.ceph_auth_none_info** %4, align 8
  %21 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %3, align 8
  %22 = getelementptr inbounds %struct.ceph_auth_client, %struct.ceph_auth_client* %21, i32 0, i32 1
  store %struct.ceph_auth_none_info* %20, %struct.ceph_auth_none_info** %22, align 8
  %23 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %3, align 8
  %24 = getelementptr inbounds %struct.ceph_auth_client, %struct.ceph_auth_client* %23, i32 0, i32 0
  store i32* @ceph_auth_none_ops, i32** %24, align 8
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %14, %11
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @dout(i8*, %struct.ceph_auth_client*) #1

declare dso_local %struct.ceph_auth_none_info* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
