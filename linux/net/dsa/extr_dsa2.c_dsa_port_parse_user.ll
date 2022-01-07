; ModuleID = '/home/carl/AnghaBench/linux/net/dsa/extr_dsa2.c_dsa_port_parse_user.c'
source_filename = "/home/carl/AnghaBench/linux/net/dsa/extr_dsa2.c_dsa_port_parse_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_port = type { i8*, i32 }

@.str = private unnamed_addr constant [6 x i8] c"eth%d\00", align 1
@DSA_PORT_TYPE_USER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_port*, i8*)* @dsa_port_parse_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsa_port_parse_user(%struct.dsa_port* %0, i8* %1) #0 {
  %3 = alloca %struct.dsa_port*, align 8
  %4 = alloca i8*, align 8
  store %struct.dsa_port* %0, %struct.dsa_port** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %8

8:                                                ; preds = %7, %2
  %9 = load i32, i32* @DSA_PORT_TYPE_USER, align 4
  %10 = load %struct.dsa_port*, %struct.dsa_port** %3, align 8
  %11 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = load %struct.dsa_port*, %struct.dsa_port** %3, align 8
  %14 = getelementptr inbounds %struct.dsa_port, %struct.dsa_port* %13, i32 0, i32 0
  store i8* %12, i8** %14, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
