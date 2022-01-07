; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_auth_x.c_ceph_x_check_message_signature.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_auth_x.c_ceph_x_check_message_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_auth_handshake = type { i64 }
%struct.ceph_msg = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ceph_x_authorizer = type { i32 }

@NOMSGSIGN = common dso_local global i32 0, align 4
@CEPH_MSG_FOOTER_SIGNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"ceph_x_check_message_signature %p has signature %llx expect %llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [77 x i8] c"ceph_x_check_message_signature %p sender did not set CEPH_MSG_FOOTER_SIGNED\0A\00", align 1
@EBADMSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_auth_handshake*, %struct.ceph_msg*)* @ceph_x_check_message_signature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceph_x_check_message_signature(%struct.ceph_auth_handshake* %0, %struct.ceph_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ceph_auth_handshake*, align 8
  %5 = alloca %struct.ceph_msg*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ceph_auth_handshake* %0, %struct.ceph_auth_handshake** %4, align 8
  store %struct.ceph_msg* %1, %struct.ceph_msg** %5, align 8
  %8 = load %struct.ceph_msg*, %struct.ceph_msg** %5, align 8
  %9 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @from_msgr(i32 %12)
  %14 = load i32, i32* @NOMSGSIGN, align 4
  %15 = call i64 @ceph_test_opt(i32 %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %59

18:                                               ; preds = %2
  %19 = load %struct.ceph_auth_handshake*, %struct.ceph_auth_handshake** %4, align 8
  %20 = getelementptr inbounds %struct.ceph_auth_handshake, %struct.ceph_auth_handshake* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.ceph_x_authorizer*
  %23 = load %struct.ceph_msg*, %struct.ceph_msg** %5, align 8
  %24 = call i32 @calc_signature(%struct.ceph_x_authorizer* %22, %struct.ceph_msg* %23, i64* %6)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %59

29:                                               ; preds = %18
  %30 = load i64, i64* %6, align 8
  %31 = load %struct.ceph_msg*, %struct.ceph_msg** %5, align 8
  %32 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %30, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %59

37:                                               ; preds = %29
  %38 = load %struct.ceph_msg*, %struct.ceph_msg** %5, align 8
  %39 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @CEPH_MSG_FOOTER_SIGNED, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %37
  %46 = load %struct.ceph_msg*, %struct.ceph_msg** %5, align 8
  %47 = load %struct.ceph_msg*, %struct.ceph_msg** %5, align 8
  %48 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %6, align 8
  %52 = call i32 (i8*, %struct.ceph_msg*, ...) @dout(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), %struct.ceph_msg* %46, i64 %50, i64 %51)
  br label %56

53:                                               ; preds = %37
  %54 = load %struct.ceph_msg*, %struct.ceph_msg** %5, align 8
  %55 = call i32 (i8*, %struct.ceph_msg*, ...) @dout(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), %struct.ceph_msg* %54)
  br label %56

56:                                               ; preds = %53, %45
  %57 = load i32, i32* @EBADMSG, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %56, %36, %27, %17
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i64 @ceph_test_opt(i32, i32) #1

declare dso_local i32 @from_msgr(i32) #1

declare dso_local i32 @calc_signature(%struct.ceph_x_authorizer*, %struct.ceph_msg*, i64*) #1

declare dso_local i32 @dout(i8*, %struct.ceph_msg*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
