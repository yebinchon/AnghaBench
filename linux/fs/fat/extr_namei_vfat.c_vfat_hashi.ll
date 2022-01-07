; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_namei_vfat.c_vfat_hashi.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_namei_vfat.c_vfat_hashi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.qstr = type { i8*, i32 }
%struct.nls_table = type { i32 }
%struct.TYPE_2__ = type { %struct.nls_table* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.qstr*)* @vfat_hashi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfat_hashi(%struct.dentry* %0, %struct.qstr* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.qstr*, align 8
  %5 = alloca %struct.nls_table*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.qstr* %1, %struct.qstr** %4, align 8
  %9 = load %struct.dentry*, %struct.dentry** %3, align 8
  %10 = getelementptr inbounds %struct.dentry, %struct.dentry* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.TYPE_2__* @MSDOS_SB(i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.nls_table*, %struct.nls_table** %13, align 8
  store %struct.nls_table* %14, %struct.nls_table** %5, align 8
  %15 = load %struct.qstr*, %struct.qstr** %4, align 8
  %16 = getelementptr inbounds %struct.qstr, %struct.qstr* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %6, align 8
  %18 = load %struct.qstr*, %struct.qstr** %4, align 8
  %19 = call i32 @vfat_striptail_len(%struct.qstr* %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.dentry*, %struct.dentry** %3, align 8
  %21 = call i64 @init_name_hash(%struct.dentry* %20)
  store i64 %21, i64* %8, align 8
  br label %22

22:                                               ; preds = %26, %2
  %23 = load i32, i32* %7, align 4
  %24 = add i32 %23, -1
  store i32 %24, i32* %7, align 4
  %25 = icmp ne i32 %23, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %22
  %27 = load %struct.nls_table*, %struct.nls_table** %5, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %6, align 8
  %30 = load i8, i8* %28, align 1
  %31 = zext i8 %30 to i32
  %32 = call i32 @nls_tolower(%struct.nls_table* %27, i32 %31)
  %33 = load i64, i64* %8, align 8
  %34 = call i64 @partial_name_hash(i32 %32, i64 %33)
  store i64 %34, i64* %8, align 8
  br label %22

35:                                               ; preds = %22
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @end_name_hash(i64 %36)
  %38 = load %struct.qstr*, %struct.qstr** %4, align 8
  %39 = getelementptr inbounds %struct.qstr, %struct.qstr* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  ret i32 0
}

declare dso_local %struct.TYPE_2__* @MSDOS_SB(i32) #1

declare dso_local i32 @vfat_striptail_len(%struct.qstr*) #1

declare dso_local i64 @init_name_hash(%struct.dentry*) #1

declare dso_local i64 @partial_name_hash(i32, i64) #1

declare dso_local i32 @nls_tolower(%struct.nls_table*, i32) #1

declare dso_local i32 @end_name_hash(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
