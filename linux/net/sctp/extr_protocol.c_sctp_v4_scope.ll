; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_protocol.c_sctp_v4_scope.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_protocol.c_sctp_v4_scope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.sctp_addr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@SCTP_SCOPE_UNUSABLE = common dso_local global i32 0, align 4
@SCTP_SCOPE_LOOPBACK = common dso_local global i32 0, align 4
@SCTP_SCOPE_LINK = common dso_local global i32 0, align 4
@SCTP_SCOPE_PRIVATE = common dso_local global i32 0, align 4
@SCTP_SCOPE_GLOBAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.sctp_addr*)* @sctp_v4_scope to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_v4_scope(%union.sctp_addr* %0) #0 {
  %2 = alloca %union.sctp_addr*, align 8
  %3 = alloca i32, align 4
  store %union.sctp_addr* %0, %union.sctp_addr** %2, align 8
  %4 = load %union.sctp_addr*, %union.sctp_addr** %2, align 8
  %5 = bitcast %union.sctp_addr* %4 to %struct.TYPE_4__*
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @IS_IPV4_UNUSABLE_ADDRESS(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @SCTP_SCOPE_UNUSABLE, align 4
  store i32 %12, i32* %3, align 4
  br label %64

13:                                               ; preds = %1
  %14 = load %union.sctp_addr*, %union.sctp_addr** %2, align 8
  %15 = bitcast %union.sctp_addr* %14 to %struct.TYPE_4__*
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @ipv4_is_loopback(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = load i32, i32* @SCTP_SCOPE_LOOPBACK, align 4
  store i32 %22, i32* %3, align 4
  br label %63

23:                                               ; preds = %13
  %24 = load %union.sctp_addr*, %union.sctp_addr** %2, align 8
  %25 = bitcast %union.sctp_addr* %24 to %struct.TYPE_4__*
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @ipv4_is_linklocal_169(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* @SCTP_SCOPE_LINK, align 4
  store i32 %32, i32* %3, align 4
  br label %62

33:                                               ; preds = %23
  %34 = load %union.sctp_addr*, %union.sctp_addr** %2, align 8
  %35 = bitcast %union.sctp_addr* %34 to %struct.TYPE_4__*
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @ipv4_is_private_10(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %57, label %41

41:                                               ; preds = %33
  %42 = load %union.sctp_addr*, %union.sctp_addr** %2, align 8
  %43 = bitcast %union.sctp_addr* %42 to %struct.TYPE_4__*
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @ipv4_is_private_172(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %41
  %50 = load %union.sctp_addr*, %union.sctp_addr** %2, align 8
  %51 = bitcast %union.sctp_addr* %50 to %struct.TYPE_4__*
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @ipv4_is_private_192(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %49, %41, %33
  %58 = load i32, i32* @SCTP_SCOPE_PRIVATE, align 4
  store i32 %58, i32* %3, align 4
  br label %61

59:                                               ; preds = %49
  %60 = load i32, i32* @SCTP_SCOPE_GLOBAL, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %59, %57
  br label %62

62:                                               ; preds = %61, %31
  br label %63

63:                                               ; preds = %62, %21
  br label %64

64:                                               ; preds = %63, %11
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i64 @IS_IPV4_UNUSABLE_ADDRESS(i32) #1

declare dso_local i64 @ipv4_is_loopback(i32) #1

declare dso_local i64 @ipv4_is_linklocal_169(i32) #1

declare dso_local i64 @ipv4_is_private_10(i32) #1

declare dso_local i64 @ipv4_is_private_172(i32) #1

declare dso_local i64 @ipv4_is_private_192(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
