; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_refresh_open_old_stateid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4proc.c_nfs4_refresh_open_old_stateid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.nfs4_state = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.nfs4_state*)* @nfs4_refresh_open_old_stateid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_refresh_open_old_stateid(%struct.TYPE_6__* %0, %struct.nfs4_state* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.nfs4_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.nfs4_state* %1, %struct.nfs4_state** %4, align 8
  br label %9

9:                                                ; preds = %40, %28, %2
  store i32 0, i32* %7, align 4
  %10 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %11 = call i32 @nfs4_valid_open_stateid(%struct.nfs4_state* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  br label %62

14:                                               ; preds = %9
  %15 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %16 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %15, i32 0, i32 0
  %17 = call i32 @read_seqbegin(i32* %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = call i32 @nfs4_state_match_open_stateid_other(%struct.nfs4_state* %18, %struct.TYPE_6__* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %14
  %23 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %24 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %23, i32 0, i32 0
  %25 = load i32, i32* %8, align 4
  %26 = call i64 @read_seqretry(i32* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %9

29:                                               ; preds = %22
  br label %62

30:                                               ; preds = %14
  %31 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %32 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %5, align 4
  %35 = load %struct.nfs4_state*, %struct.nfs4_state** %4, align 8
  %36 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %35, i32 0, i32 0
  %37 = load i32, i32* %8, align 4
  %38 = call i64 @read_seqretry(i32* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  br label %9

41:                                               ; preds = %30
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @be32_to_cpu(i32 %44)
  store i64 %45, i64* %6, align 8
  %46 = load i64, i64* %6, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i64 @be32_to_cpu(i32 %47)
  %49 = sub nsw i64 %46, %48
  %50 = icmp sge i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %41
  %52 = load i64, i64* %6, align 8
  %53 = add nsw i64 %52, 1
  %54 = call i32 @cpu_to_be32(i64 %53)
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  br label %61

57:                                               ; preds = %41
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %57, %51
  store i32 1, i32* %7, align 4
  br label %62

62:                                               ; preds = %61, %29, %13
  %63 = load i32, i32* %7, align 4
  ret i32 %63
}

declare dso_local i32 @nfs4_valid_open_stateid(%struct.nfs4_state*) #1

declare dso_local i32 @read_seqbegin(i32*) #1

declare dso_local i32 @nfs4_state_match_open_stateid_other(%struct.nfs4_state*, %struct.TYPE_6__*) #1

declare dso_local i64 @read_seqretry(i32*, i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @cpu_to_be32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
