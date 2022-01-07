; ModuleID = '/home/carl/AnghaBench/linux/fs/isofs/extr_rock.c_setup_rock_ridge.c'
source_filename = "/home/carl/AnghaBench/linux/fs/isofs/extr_rock.c_setup_rock_ridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iso_directory_record = type { i32* }
%struct.inode = type { i32 }
%struct.rock_state = type { i32, i8* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iso_directory_record*, %struct.inode*, %struct.rock_state*)* @setup_rock_ridge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_rock_ridge(%struct.iso_directory_record* %0, %struct.inode* %1, %struct.rock_state* %2) #0 {
  %4 = alloca %struct.iso_directory_record*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.rock_state*, align 8
  store %struct.iso_directory_record* %0, %struct.iso_directory_record** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store %struct.rock_state* %2, %struct.rock_state** %6, align 8
  %7 = load %struct.iso_directory_record*, %struct.iso_directory_record** %4, align 8
  %8 = getelementptr inbounds %struct.iso_directory_record, %struct.iso_directory_record* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = add i64 8, %12
  %14 = trunc i64 %13 to i32
  %15 = load %struct.rock_state*, %struct.rock_state** %6, align 8
  %16 = getelementptr inbounds %struct.rock_state, %struct.rock_state* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.rock_state*, %struct.rock_state** %6, align 8
  %18 = getelementptr inbounds %struct.rock_state, %struct.rock_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, 1
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load %struct.rock_state*, %struct.rock_state** %6, align 8
  %24 = getelementptr inbounds %struct.rock_state, %struct.rock_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 8
  br label %27

27:                                               ; preds = %22, %3
  %28 = load %struct.iso_directory_record*, %struct.iso_directory_record** %4, align 8
  %29 = bitcast %struct.iso_directory_record* %28 to i8*
  %30 = load %struct.rock_state*, %struct.rock_state** %6, align 8
  %31 = getelementptr inbounds %struct.rock_state, %struct.rock_state* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %29, i64 %33
  %35 = load %struct.rock_state*, %struct.rock_state** %6, align 8
  %36 = getelementptr inbounds %struct.rock_state, %struct.rock_state* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  %37 = load %struct.iso_directory_record*, %struct.iso_directory_record** %4, align 8
  %38 = bitcast %struct.iso_directory_record* %37 to i8*
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = load %struct.rock_state*, %struct.rock_state** %6, align 8
  %42 = getelementptr inbounds %struct.rock_state, %struct.rock_state* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sub nsw i32 %40, %43
  %45 = load %struct.rock_state*, %struct.rock_state** %6, align 8
  %46 = getelementptr inbounds %struct.rock_state, %struct.rock_state* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.rock_state*, %struct.rock_state** %6, align 8
  %48 = getelementptr inbounds %struct.rock_state, %struct.rock_state* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %27
  %52 = load %struct.rock_state*, %struct.rock_state** %6, align 8
  %53 = getelementptr inbounds %struct.rock_state, %struct.rock_state* %52, i32 0, i32 0
  store i32 0, i32* %53, align 8
  br label %54

54:                                               ; preds = %51, %27
  %55 = load %struct.inode*, %struct.inode** %5, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call %struct.TYPE_2__* @ISOFS_SB(i32 %57)
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, -1
  br i1 %61, label %62, label %92

62:                                               ; preds = %54
  %63 = load %struct.inode*, %struct.inode** %5, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call %struct.TYPE_2__* @ISOFS_SB(i32 %65)
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.rock_state*, %struct.rock_state** %6, align 8
  %70 = getelementptr inbounds %struct.rock_state, %struct.rock_state* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sub nsw i32 %71, %68
  store i32 %72, i32* %70, align 8
  %73 = load %struct.inode*, %struct.inode** %5, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call %struct.TYPE_2__* @ISOFS_SB(i32 %75)
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.rock_state*, %struct.rock_state** %6, align 8
  %80 = getelementptr inbounds %struct.rock_state, %struct.rock_state* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = sext i32 %78 to i64
  %83 = getelementptr inbounds i8, i8* %81, i64 %82
  store i8* %83, i8** %80, align 8
  %84 = load %struct.rock_state*, %struct.rock_state** %6, align 8
  %85 = getelementptr inbounds %struct.rock_state, %struct.rock_state* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %62
  %89 = load %struct.rock_state*, %struct.rock_state** %6, align 8
  %90 = getelementptr inbounds %struct.rock_state, %struct.rock_state* %89, i32 0, i32 0
  store i32 0, i32* %90, align 8
  br label %91

91:                                               ; preds = %88, %62
  br label %92

92:                                               ; preds = %91, %54
  ret void
}

declare dso_local %struct.TYPE_2__* @ISOFS_SB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
