; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_associola.c_sctp_association_new.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_associola.c_sctp_association_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { i32 }
%struct.sctp_endpoint = type { i32 }
%struct.sock = type { i32 }

@assoc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Created asoc %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_association* @sctp_association_new(%struct.sctp_endpoint* %0, %struct.sock* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sctp_association*, align 8
  %6 = alloca %struct.sctp_endpoint*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sctp_association*, align 8
  store %struct.sctp_endpoint* %0, %struct.sctp_endpoint** %6, align 8
  store %struct.sock* %1, %struct.sock** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = call %struct.sctp_association* @kzalloc(i32 4, i32 %11)
  store %struct.sctp_association* %12, %struct.sctp_association** %10, align 8
  %13 = load %struct.sctp_association*, %struct.sctp_association** %10, align 8
  %14 = icmp ne %struct.sctp_association* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  br label %34

16:                                               ; preds = %4
  %17 = load %struct.sctp_association*, %struct.sctp_association** %10, align 8
  %18 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %6, align 8
  %19 = load %struct.sock*, %struct.sock** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @sctp_association_init(%struct.sctp_association* %17, %struct.sctp_endpoint* %18, %struct.sock* %19, i32 %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %16
  br label %31

25:                                               ; preds = %16
  %26 = load i32, i32* @assoc, align 4
  %27 = call i32 @SCTP_DBG_OBJCNT_INC(i32 %26)
  %28 = load %struct.sctp_association*, %struct.sctp_association** %10, align 8
  %29 = call i32 @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.sctp_association* %28)
  %30 = load %struct.sctp_association*, %struct.sctp_association** %10, align 8
  store %struct.sctp_association* %30, %struct.sctp_association** %5, align 8
  br label %35

31:                                               ; preds = %24
  %32 = load %struct.sctp_association*, %struct.sctp_association** %10, align 8
  %33 = call i32 @kfree(%struct.sctp_association* %32)
  br label %34

34:                                               ; preds = %31, %15
  store %struct.sctp_association* null, %struct.sctp_association** %5, align 8
  br label %35

35:                                               ; preds = %34, %25
  %36 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  ret %struct.sctp_association* %36
}

declare dso_local %struct.sctp_association* @kzalloc(i32, i32) #1

declare dso_local i32 @sctp_association_init(%struct.sctp_association*, %struct.sctp_endpoint*, %struct.sock*, i32, i32) #1

declare dso_local i32 @SCTP_DBG_OBJCNT_INC(i32) #1

declare dso_local i32 @pr_debug(i8*, %struct.sctp_association*) #1

declare dso_local i32 @kfree(%struct.sctp_association*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
