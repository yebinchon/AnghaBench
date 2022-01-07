; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_recv.c_rds_inc_info_copy.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_recv.c_rds_inc_info_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_incoming = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.rds_info_iterator = type { i32 }
%struct.rds_info_message = type { i64, i32, i32, i8*, i8*, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_inc_info_copy(%struct.rds_incoming* %0, %struct.rds_info_iterator* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.rds_incoming*, align 8
  %7 = alloca %struct.rds_info_iterator*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.rds_info_message, align 8
  store %struct.rds_incoming* %0, %struct.rds_incoming** %6, align 8
  store %struct.rds_info_iterator* %1, %struct.rds_info_iterator** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.rds_incoming*, %struct.rds_incoming** %6, align 8
  %13 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @be64_to_cpu(i32 %15)
  %17 = getelementptr inbounds %struct.rds_info_message, %struct.rds_info_message* %11, i32 0, i32 7
  store i32 %16, i32* %17, align 8
  %18 = load %struct.rds_incoming*, %struct.rds_incoming** %6, align 8
  %19 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @be32_to_cpu(i32 %21)
  %23 = getelementptr inbounds %struct.rds_info_message, %struct.rds_info_message* %11, i32 0, i32 6
  store i32 %22, i32* %23, align 4
  %24 = load %struct.rds_incoming*, %struct.rds_incoming** %6, align 8
  %25 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.rds_info_message, %struct.rds_info_message* %11, i32 0, i32 5
  store i32 %28, i32* %29, align 8
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %5
  %33 = load i8*, i8** %9, align 8
  %34 = getelementptr inbounds %struct.rds_info_message, %struct.rds_info_message* %11, i32 0, i32 4
  store i8* %33, i8** %34, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = getelementptr inbounds %struct.rds_info_message, %struct.rds_info_message* %11, i32 0, i32 3
  store i8* %35, i8** %36, align 8
  %37 = load %struct.rds_incoming*, %struct.rds_incoming** %6, align 8
  %38 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds %struct.rds_info_message, %struct.rds_info_message* %11, i32 0, i32 2
  store i32 %40, i32* %41, align 4
  %42 = load %struct.rds_incoming*, %struct.rds_incoming** %6, align 8
  %43 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.rds_info_message, %struct.rds_info_message* %11, i32 0, i32 1
  store i32 %45, i32* %46, align 8
  br label %62

47:                                               ; preds = %5
  %48 = load i8*, i8** %8, align 8
  %49 = getelementptr inbounds %struct.rds_info_message, %struct.rds_info_message* %11, i32 0, i32 4
  store i8* %48, i8** %49, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = getelementptr inbounds %struct.rds_info_message, %struct.rds_info_message* %11, i32 0, i32 3
  store i8* %50, i8** %51, align 8
  %52 = load %struct.rds_incoming*, %struct.rds_incoming** %6, align 8
  %53 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.rds_info_message, %struct.rds_info_message* %11, i32 0, i32 2
  store i32 %55, i32* %56, align 4
  %57 = load %struct.rds_incoming*, %struct.rds_incoming** %6, align 8
  %58 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = getelementptr inbounds %struct.rds_info_message, %struct.rds_info_message* %11, i32 0, i32 1
  store i32 %60, i32* %61, align 8
  br label %62

62:                                               ; preds = %47, %32
  %63 = getelementptr inbounds %struct.rds_info_message, %struct.rds_info_message* %11, i32 0, i32 0
  store i64 0, i64* %63, align 8
  %64 = load %struct.rds_info_iterator*, %struct.rds_info_iterator** %7, align 8
  %65 = call i32 @rds_info_copy(%struct.rds_info_iterator* %64, %struct.rds_info_message* %11, i32 48)
  ret void
}

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @rds_info_copy(%struct.rds_info_iterator*, %struct.rds_info_message*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
