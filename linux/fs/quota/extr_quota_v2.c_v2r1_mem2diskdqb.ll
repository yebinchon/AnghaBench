; ModuleID = '/home/carl/AnghaBench/linux/fs/quota/extr_quota_v2.c_v2r1_mem2diskdqb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/quota/extr_quota_v2.c_v2r1_mem2diskdqb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dquot = type { %struct.TYPE_4__, i32, %struct.mem_dqblk }
%struct.TYPE_4__ = type { i32 }
%struct.mem_dqblk = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v2r1_disk_dqblk = type { i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.qtree_mem_dqinfo = type { i32 }
%struct.TYPE_3__ = type { %struct.qtree_mem_dqinfo* }

@init_user_ns = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.dquot*)* @v2r1_mem2diskdqb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @v2r1_mem2diskdqb(i8* %0, %struct.dquot* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dquot*, align 8
  %5 = alloca %struct.v2r1_disk_dqblk*, align 8
  %6 = alloca %struct.mem_dqblk*, align 8
  %7 = alloca %struct.qtree_mem_dqinfo*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.dquot* %1, %struct.dquot** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.v2r1_disk_dqblk*
  store %struct.v2r1_disk_dqblk* %9, %struct.v2r1_disk_dqblk** %5, align 8
  %10 = load %struct.dquot*, %struct.dquot** %4, align 8
  %11 = getelementptr inbounds %struct.dquot, %struct.dquot* %10, i32 0, i32 2
  store %struct.mem_dqblk* %11, %struct.mem_dqblk** %6, align 8
  %12 = load %struct.dquot*, %struct.dquot** %4, align 8
  %13 = getelementptr inbounds %struct.dquot, %struct.dquot* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.dquot*, %struct.dquot** %4, align 8
  %16 = getelementptr inbounds %struct.dquot, %struct.dquot* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.TYPE_3__* @sb_dqinfo(i32 %14, i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %20, align 8
  store %struct.qtree_mem_dqinfo* %21, %struct.qtree_mem_dqinfo** %7, align 8
  %22 = load %struct.mem_dqblk*, %struct.mem_dqblk** %6, align 8
  %23 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @cpu_to_le64(i32 %24)
  %26 = load %struct.v2r1_disk_dqblk*, %struct.v2r1_disk_dqblk** %5, align 8
  %27 = getelementptr inbounds %struct.v2r1_disk_dqblk, %struct.v2r1_disk_dqblk* %26, i32 0, i32 8
  store i8* %25, i8** %27, align 8
  %28 = load %struct.mem_dqblk*, %struct.mem_dqblk** %6, align 8
  %29 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @cpu_to_le64(i32 %30)
  %32 = load %struct.v2r1_disk_dqblk*, %struct.v2r1_disk_dqblk** %5, align 8
  %33 = getelementptr inbounds %struct.v2r1_disk_dqblk, %struct.v2r1_disk_dqblk* %32, i32 0, i32 7
  store i8* %31, i8** %33, align 8
  %34 = load %struct.mem_dqblk*, %struct.mem_dqblk** %6, align 8
  %35 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @cpu_to_le64(i32 %36)
  %38 = load %struct.v2r1_disk_dqblk*, %struct.v2r1_disk_dqblk** %5, align 8
  %39 = getelementptr inbounds %struct.v2r1_disk_dqblk, %struct.v2r1_disk_dqblk* %38, i32 0, i32 6
  store i8* %37, i8** %39, align 8
  %40 = load %struct.mem_dqblk*, %struct.mem_dqblk** %6, align 8
  %41 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @cpu_to_le64(i32 %42)
  %44 = load %struct.v2r1_disk_dqblk*, %struct.v2r1_disk_dqblk** %5, align 8
  %45 = getelementptr inbounds %struct.v2r1_disk_dqblk, %struct.v2r1_disk_dqblk* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  %46 = load %struct.mem_dqblk*, %struct.mem_dqblk** %6, align 8
  %47 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @v2_stoqb(i32 %48)
  %50 = call i8* @cpu_to_le64(i32 %49)
  %51 = load %struct.v2r1_disk_dqblk*, %struct.v2r1_disk_dqblk** %5, align 8
  %52 = getelementptr inbounds %struct.v2r1_disk_dqblk, %struct.v2r1_disk_dqblk* %51, i32 0, i32 5
  store i8* %50, i8** %52, align 8
  %53 = load %struct.mem_dqblk*, %struct.mem_dqblk** %6, align 8
  %54 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @v2_stoqb(i32 %55)
  %57 = call i8* @cpu_to_le64(i32 %56)
  %58 = load %struct.v2r1_disk_dqblk*, %struct.v2r1_disk_dqblk** %5, align 8
  %59 = getelementptr inbounds %struct.v2r1_disk_dqblk, %struct.v2r1_disk_dqblk* %58, i32 0, i32 4
  store i8* %57, i8** %59, align 8
  %60 = load %struct.mem_dqblk*, %struct.mem_dqblk** %6, align 8
  %61 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @cpu_to_le64(i32 %62)
  %64 = load %struct.v2r1_disk_dqblk*, %struct.v2r1_disk_dqblk** %5, align 8
  %65 = getelementptr inbounds %struct.v2r1_disk_dqblk, %struct.v2r1_disk_dqblk* %64, i32 0, i32 3
  store i8* %63, i8** %65, align 8
  %66 = load %struct.mem_dqblk*, %struct.mem_dqblk** %6, align 8
  %67 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @cpu_to_le64(i32 %68)
  %70 = load %struct.v2r1_disk_dqblk*, %struct.v2r1_disk_dqblk** %5, align 8
  %71 = getelementptr inbounds %struct.v2r1_disk_dqblk, %struct.v2r1_disk_dqblk* %70, i32 0, i32 2
  store i8* %69, i8** %71, align 8
  %72 = load %struct.dquot*, %struct.dquot** %4, align 8
  %73 = getelementptr inbounds %struct.dquot, %struct.dquot* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @from_kqid(i32* @init_user_ns, i32 %75)
  %77 = call i32 @cpu_to_le32(i32 %76)
  %78 = load %struct.v2r1_disk_dqblk*, %struct.v2r1_disk_dqblk** %5, align 8
  %79 = getelementptr inbounds %struct.v2r1_disk_dqblk, %struct.v2r1_disk_dqblk* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 8
  %80 = load %struct.qtree_mem_dqinfo*, %struct.qtree_mem_dqinfo** %7, align 8
  %81 = load i8*, i8** %3, align 8
  %82 = call i64 @qtree_entry_unused(%struct.qtree_mem_dqinfo* %80, i8* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %2
  %85 = call i8* @cpu_to_le64(i32 1)
  %86 = load %struct.v2r1_disk_dqblk*, %struct.v2r1_disk_dqblk** %5, align 8
  %87 = getelementptr inbounds %struct.v2r1_disk_dqblk, %struct.v2r1_disk_dqblk* %86, i32 0, i32 0
  store i8* %85, i8** %87, align 8
  br label %88

88:                                               ; preds = %84, %2
  ret void
}

declare dso_local %struct.TYPE_3__* @sb_dqinfo(i32, i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @v2_stoqb(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @from_kqid(i32*, i32) #1

declare dso_local i64 @qtree_entry_unused(%struct.qtree_mem_dqinfo*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
