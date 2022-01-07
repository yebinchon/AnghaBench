; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_tsnmap.c_sctp_tsnmap_mark.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_tsnmap.c_sctp_tsnmap_mark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_tsnmap = type { i64, i64, i64, i32, i32 }
%struct.sctp_transport = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_tsnmap_mark(%struct.sctp_tsnmap* %0, i64 %1, %struct.sctp_transport* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sctp_tsnmap*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sctp_transport*, align 8
  %8 = alloca i64, align 8
  store %struct.sctp_tsnmap* %0, %struct.sctp_tsnmap** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.sctp_transport* %2, %struct.sctp_transport** %7, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %5, align 8
  %11 = getelementptr inbounds %struct.sctp_tsnmap, %struct.sctp_tsnmap* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i64 @TSN_lt(i64 %9, i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %88

16:                                               ; preds = %3
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %5, align 8
  %19 = getelementptr inbounds %struct.sctp_tsnmap, %struct.sctp_tsnmap* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = sub nsw i64 %17, %20
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %5, align 8
  %24 = getelementptr inbounds %struct.sctp_tsnmap, %struct.sctp_tsnmap* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp sge i64 %22, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %16
  %28 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %5, align 8
  %29 = load i64, i64* %8, align 8
  %30 = add nsw i64 %29, 1
  %31 = call i32 @sctp_tsnmap_grow(%struct.sctp_tsnmap* %28, i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %88

36:                                               ; preds = %27, %16
  %37 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %5, align 8
  %38 = call i32 @sctp_tsnmap_has_gap(%struct.sctp_tsnmap* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %68, label %40

40:                                               ; preds = %36
  %41 = load i64, i64* %8, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %68

43:                                               ; preds = %40
  %44 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %5, align 8
  %45 = getelementptr inbounds %struct.sctp_tsnmap, %struct.sctp_tsnmap* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %45, align 8
  %48 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %5, align 8
  %49 = getelementptr inbounds %struct.sctp_tsnmap, %struct.sctp_tsnmap* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  %52 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %53 = icmp ne %struct.sctp_transport* %52, null
  br i1 %53, label %54, label %63

54:                                               ; preds = %43
  %55 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %56 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.sctp_transport*, %struct.sctp_transport** %7, align 8
  %62 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  br label %63

63:                                               ; preds = %54, %43
  %64 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %5, align 8
  %65 = getelementptr inbounds %struct.sctp_tsnmap, %struct.sctp_tsnmap* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %65, align 8
  br label %87

68:                                               ; preds = %40, %36
  %69 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %5, align 8
  %70 = getelementptr inbounds %struct.sctp_tsnmap, %struct.sctp_tsnmap* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %6, align 8
  %73 = call i64 @TSN_lt(i64 %71, i64 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %68
  %76 = load i64, i64* %6, align 8
  %77 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %5, align 8
  %78 = getelementptr inbounds %struct.sctp_tsnmap, %struct.sctp_tsnmap* %77, i32 0, i32 2
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %75, %68
  %80 = load i64, i64* %8, align 8
  %81 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %5, align 8
  %82 = getelementptr inbounds %struct.sctp_tsnmap, %struct.sctp_tsnmap* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @set_bit(i64 %80, i32 %83)
  %85 = load %struct.sctp_tsnmap*, %struct.sctp_tsnmap** %5, align 8
  %86 = call i32 @sctp_tsnmap_update(%struct.sctp_tsnmap* %85)
  br label %87

87:                                               ; preds = %79, %63
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %87, %33, %15
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i64 @TSN_lt(i64, i64) #1

declare dso_local i32 @sctp_tsnmap_grow(%struct.sctp_tsnmap*, i64) #1

declare dso_local i32 @sctp_tsnmap_has_gap(%struct.sctp_tsnmap*) #1

declare dso_local i32 @set_bit(i64, i32) #1

declare dso_local i32 @sctp_tsnmap_update(%struct.sctp_tsnmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
