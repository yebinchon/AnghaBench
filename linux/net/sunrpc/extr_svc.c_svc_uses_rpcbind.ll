; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_svc.c_svc_uses_rpcbind.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_svc.c_svc_uses_rpcbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_serv = type { %struct.svc_program* }
%struct.svc_program = type { i32, %struct.TYPE_2__**, %struct.svc_program* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_serv*)* @svc_uses_rpcbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_uses_rpcbind(%struct.svc_serv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.svc_serv*, align 8
  %4 = alloca %struct.svc_program*, align 8
  %5 = alloca i32, align 4
  store %struct.svc_serv* %0, %struct.svc_serv** %3, align 8
  %6 = load %struct.svc_serv*, %struct.svc_serv** %3, align 8
  %7 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %6, i32 0, i32 0
  %8 = load %struct.svc_program*, %struct.svc_program** %7, align 8
  store %struct.svc_program* %8, %struct.svc_program** %4, align 8
  br label %9

9:                                                ; preds = %46, %1
  %10 = load %struct.svc_program*, %struct.svc_program** %4, align 8
  %11 = icmp ne %struct.svc_program* %10, null
  br i1 %11, label %12, label %50

12:                                               ; preds = %9
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %42, %12
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.svc_program*, %struct.svc_program** %4, align 8
  %16 = getelementptr inbounds %struct.svc_program, %struct.svc_program* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ult i32 %14, %17
  br i1 %18, label %19, label %45

19:                                               ; preds = %13
  %20 = load %struct.svc_program*, %struct.svc_program** %4, align 8
  %21 = getelementptr inbounds %struct.svc_program, %struct.svc_program* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %22, i64 %24
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = icmp eq %struct.TYPE_2__* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %42

29:                                               ; preds = %19
  %30 = load %struct.svc_program*, %struct.svc_program** %4, align 8
  %31 = getelementptr inbounds %struct.svc_program, %struct.svc_program* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %32, i64 %34
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %29
  store i32 1, i32* %2, align 4
  br label %51

41:                                               ; preds = %29
  br label %42

42:                                               ; preds = %41, %28
  %43 = load i32, i32* %5, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %13

45:                                               ; preds = %13
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.svc_program*, %struct.svc_program** %4, align 8
  %48 = getelementptr inbounds %struct.svc_program, %struct.svc_program* %47, i32 0, i32 2
  %49 = load %struct.svc_program*, %struct.svc_program** %48, align 8
  store %struct.svc_program* %49, %struct.svc_program** %4, align 8
  br label %9

50:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %40
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
