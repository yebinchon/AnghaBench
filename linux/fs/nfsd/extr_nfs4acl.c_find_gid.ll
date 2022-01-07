; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4acl.c_find_gid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4acl.c_find_gid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.posix_acl_state = type { %struct.TYPE_6__, %struct.posix_ace_state_array* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.posix_ace_state_array = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.posix_acl_state*, i32)* @find_gid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_gid(%struct.posix_acl_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.posix_acl_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.posix_ace_state_array*, align 8
  %7 = alloca i32, align 4
  store %struct.posix_acl_state* %0, %struct.posix_acl_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.posix_acl_state*, %struct.posix_acl_state** %4, align 8
  %9 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %8, i32 0, i32 1
  %10 = load %struct.posix_ace_state_array*, %struct.posix_ace_state_array** %9, align 8
  store %struct.posix_ace_state_array* %10, %struct.posix_ace_state_array** %6, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %32, %2
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.posix_ace_state_array*, %struct.posix_ace_state_array** %6, align 8
  %14 = getelementptr inbounds %struct.posix_ace_state_array, %struct.posix_ace_state_array* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %11
  %18 = load %struct.posix_ace_state_array*, %struct.posix_ace_state_array** %6, align 8
  %19 = getelementptr inbounds %struct.posix_ace_state_array, %struct.posix_ace_state_array* %18, i32 0, i32 1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i64 @gid_eq(i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %17
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %73

31:                                               ; preds = %17
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %11

35:                                               ; preds = %11
  %36 = load %struct.posix_ace_state_array*, %struct.posix_ace_state_array** %6, align 8
  %37 = getelementptr inbounds %struct.posix_ace_state_array, %struct.posix_ace_state_array* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.posix_ace_state_array*, %struct.posix_ace_state_array** %6, align 8
  %42 = getelementptr inbounds %struct.posix_ace_state_array, %struct.posix_ace_state_array* %41, i32 0, i32 1
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  store i32 %40, i32* %47, align 4
  %48 = load %struct.posix_acl_state*, %struct.posix_acl_state** %4, align 8
  %49 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.posix_ace_state_array*, %struct.posix_ace_state_array** %6, align 8
  %53 = getelementptr inbounds %struct.posix_ace_state_array, %struct.posix_ace_state_array* %52, i32 0, i32 1
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  store i32 %51, i32* %59, align 4
  %60 = load %struct.posix_acl_state*, %struct.posix_acl_state** %4, align 8
  %61 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.posix_ace_state_array*, %struct.posix_ace_state_array** %6, align 8
  %65 = getelementptr inbounds %struct.posix_ace_state_array, %struct.posix_ace_state_array* %64, i32 0, i32 1
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store i32 %63, i32* %71, align 4
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %35, %29
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i64 @gid_eq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
