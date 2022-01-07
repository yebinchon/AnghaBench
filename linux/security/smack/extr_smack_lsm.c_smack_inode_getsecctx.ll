; ModuleID = '/home/carl/AnghaBench/linux/security/smack/extr_smack_lsm.c_smack_inode_getsecctx.c'
source_filename = "/home/carl/AnghaBench/linux/security/smack/extr_smack_lsm.c_smack_inode_getsecctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.smack_known = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8**, i32*)* @smack_inode_getsecctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smack_inode_getsecctx(%struct.inode* %0, i8** %1, i32* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.smack_known*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = call %struct.smack_known* @smk_of_inode(%struct.inode* %8)
  store %struct.smack_known* %9, %struct.smack_known** %7, align 8
  %10 = load %struct.smack_known*, %struct.smack_known** %7, align 8
  %11 = getelementptr inbounds %struct.smack_known, %struct.smack_known* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = load i8**, i8*** %5, align 8
  store i8* %12, i8** %13, align 8
  %14 = load %struct.smack_known*, %struct.smack_known** %7, align 8
  %15 = getelementptr inbounds %struct.smack_known, %struct.smack_known* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @strlen(i8* %16)
  %18 = load i32*, i32** %6, align 8
  store i32 %17, i32* %18, align 4
  ret i32 0
}

declare dso_local %struct.smack_known* @smk_of_inode(%struct.inode*) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
