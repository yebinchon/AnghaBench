; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_cong.c_rds_cong_get_maps.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_cong.c_rds_cong_get_maps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_connection = type { i8*, i8*, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rds_cong_get_maps(%struct.rds_connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rds_connection*, align 8
  store %struct.rds_connection* %0, %struct.rds_connection** %3, align 8
  %4 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %5 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %4, i32 0, i32 3
  %6 = call i8* @rds_cong_from_addr(i32* %5)
  %7 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %8 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %7, i32 0, i32 1
  store i8* %6, i8** %8, align 8
  %9 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %10 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %9, i32 0, i32 2
  %11 = call i8* @rds_cong_from_addr(i32* %10)
  %12 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %13 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %12, i32 0, i32 0
  store i8* %11, i8** %13, align 8
  %14 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %15 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.rds_connection*, %struct.rds_connection** %3, align 8
  %20 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18, %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %27

26:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %23
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i8* @rds_cong_from_addr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
