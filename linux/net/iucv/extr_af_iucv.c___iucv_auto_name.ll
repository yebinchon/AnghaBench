; ModuleID = '/home/carl/AnghaBench/linux/net/iucv/extr_af_iucv.c___iucv_auto_name.c'
source_filename = "/home/carl/AnghaBench/linux/net/iucv/extr_af_iucv.c___iucv_auto_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.iucv_sock = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"%08x\00", align 1
@iucv_sk_list = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iucv_sock*)* @__iucv_auto_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__iucv_auto_name(%struct.iucv_sock* %0) #0 {
  %2 = alloca %struct.iucv_sock*, align 8
  %3 = alloca [12 x i8], align 1
  store %struct.iucv_sock* %0, %struct.iucv_sock** %2, align 8
  %4 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 0
  %5 = call i32 @atomic_inc_return(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iucv_sk_list, i32 0, i32 0))
  %6 = call i32 @sprintf(i8* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %5)
  br label %7

7:                                                ; preds = %11, %1
  %8 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 0
  %9 = call i64 @__iucv_get_sock_by_name(i8* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 0
  %13 = call i32 @atomic_inc_return(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iucv_sk_list, i32 0, i32 0))
  %14 = call i32 @sprintf(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %7

15:                                               ; preds = %7
  %16 = load %struct.iucv_sock*, %struct.iucv_sock** %2, align 8
  %17 = getelementptr inbounds %struct.iucv_sock, %struct.iucv_sock* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 0
  %20 = call i32 @memcpy(i32 %18, i8* %19, i32 8)
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i64 @__iucv_get_sock_by_name(i8*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
