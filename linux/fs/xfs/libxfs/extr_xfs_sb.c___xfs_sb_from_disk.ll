; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_sb.c___xfs_sb_from_disk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_sb.c___xfs_sb_from_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_sb = type { i32, i8*, i8*, i8*, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_sb*, %struct.TYPE_3__*, i32)* @__xfs_sb_from_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__xfs_sb_from_disk(%struct.xfs_sb* %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca %struct.xfs_sb*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  store %struct.xfs_sb* %0, %struct.xfs_sb** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 53
  %9 = load i32, i32* %8, align 4
  %10 = call i8* @be32_to_cpu(i32 %9)
  %11 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %12 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %11, i32 0, i32 54
  store i8* %10, i8** %12, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 52
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @be32_to_cpu(i32 %15)
  %17 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %18 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %17, i32 0, i32 53
  store i8* %16, i8** %18, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 51
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @be64_to_cpu(i32 %21)
  %23 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %24 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %23, i32 0, i32 52
  store i8* %22, i8** %24, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 50
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @be64_to_cpu(i32 %27)
  %29 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %30 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %29, i32 0, i32 51
  store i8* %28, i8** %30, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 49
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @be64_to_cpu(i32 %33)
  %35 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %36 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %35, i32 0, i32 50
  store i8* %34, i8** %36, align 8
  %37 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %38 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %37, i32 0, i32 49
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = call i32 @memcpy(i32* %38, i32* %40, i32 4)
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 48
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @be64_to_cpu(i32 %44)
  %46 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %47 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %46, i32 0, i32 48
  store i8* %45, i8** %47, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 47
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @be64_to_cpu(i32 %50)
  %52 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %53 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %52, i32 0, i32 47
  store i8* %51, i8** %53, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 46
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @be64_to_cpu(i32 %56)
  %58 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %59 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %58, i32 0, i32 46
  store i8* %57, i8** %59, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 45
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @be64_to_cpu(i32 %62)
  %64 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %65 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %64, i32 0, i32 45
  store i8* %63, i8** %65, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 44
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @be32_to_cpu(i32 %68)
  %70 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %71 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %70, i32 0, i32 44
  store i8* %69, i8** %71, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 43
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @be32_to_cpu(i32 %74)
  %76 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %77 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %76, i32 0, i32 43
  store i8* %75, i8** %77, align 8
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 42
  %80 = load i32, i32* %79, align 4
  %81 = call i8* @be32_to_cpu(i32 %80)
  %82 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %83 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %82, i32 0, i32 42
  store i8* %81, i8** %83, align 8
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 41
  %86 = load i32, i32* %85, align 4
  %87 = call i8* @be32_to_cpu(i32 %86)
  %88 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %89 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %88, i32 0, i32 41
  store i8* %87, i8** %89, align 8
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 40
  %92 = load i32, i32* %91, align 4
  %93 = call i8* @be32_to_cpu(i32 %92)
  %94 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %95 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %94, i32 0, i32 40
  store i8* %93, i8** %95, align 8
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 39
  %98 = load i32, i32* %97, align 4
  %99 = call i8* @be16_to_cpu(i32 %98)
  %100 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %101 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %100, i32 0, i32 39
  store i8* %99, i8** %101, align 8
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 38
  %104 = load i32, i32* %103, align 4
  %105 = call i8* @be16_to_cpu(i32 %104)
  %106 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %107 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %106, i32 0, i32 38
  store i8* %105, i8** %107, align 8
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 37
  %110 = load i32, i32* %109, align 4
  %111 = call i8* @be16_to_cpu(i32 %110)
  %112 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %113 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %112, i32 0, i32 37
  store i8* %111, i8** %113, align 8
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 36
  %116 = load i32, i32* %115, align 4
  %117 = call i8* @be16_to_cpu(i32 %116)
  %118 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %119 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %118, i32 0, i32 36
  store i8* %117, i8** %119, align 8
  %120 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %121 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %120, i32 0, i32 35
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 35
  %124 = call i32 @memcpy(i32* %121, i32* %123, i32 4)
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 34
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %129 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %128, i32 0, i32 34
  store i32 %127, i32* %129, align 4
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 33
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %134 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %133, i32 0, i32 33
  store i32 %132, i32* %134, align 8
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 32
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %139 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %138, i32 0, i32 32
  store i32 %137, i32* %139, align 4
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 31
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %144 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %143, i32 0, i32 31
  store i32 %142, i32* %144, align 8
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 30
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %149 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %148, i32 0, i32 30
  store i32 %147, i32* %149, align 4
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 29
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %154 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %153, i32 0, i32 29
  store i32 %152, i32* %154, align 8
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 28
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %159 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %158, i32 0, i32 28
  store i32 %157, i32* %159, align 4
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 27
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %164 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %163, i32 0, i32 27
  store i32 %162, i32* %164, align 8
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 26
  %167 = load i32, i32* %166, align 4
  %168 = call i8* @be64_to_cpu(i32 %167)
  %169 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %170 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %169, i32 0, i32 26
  store i8* %168, i8** %170, align 8
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 25
  %173 = load i32, i32* %172, align 4
  %174 = call i8* @be64_to_cpu(i32 %173)
  %175 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %176 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %175, i32 0, i32 25
  store i8* %174, i8** %176, align 8
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 24
  %179 = load i32, i32* %178, align 4
  %180 = call i8* @be64_to_cpu(i32 %179)
  %181 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %182 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %181, i32 0, i32 24
  store i8* %180, i8** %182, align 8
  %183 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 23
  %185 = load i32, i32* %184, align 4
  %186 = call i8* @be64_to_cpu(i32 %185)
  %187 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %188 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %187, i32 0, i32 23
  store i8* %186, i8** %188, align 8
  %189 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 22
  %191 = load i32, i32* %190, align 4
  %192 = call i8* @be64_to_cpu(i32 %191)
  %193 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %194 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %193, i32 0, i32 22
  store i8* %192, i8** %194, align 8
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 21
  %197 = load i32, i32* %196, align 4
  %198 = call i8* @be64_to_cpu(i32 %197)
  %199 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %200 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %199, i32 0, i32 21
  store i8* %198, i8** %200, align 8
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 20
  %203 = load i32, i32* %202, align 4
  %204 = call i8* @be16_to_cpu(i32 %203)
  %205 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %206 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %205, i32 0, i32 20
  store i8* %204, i8** %206, align 8
  %207 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 19
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %211 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %210, i32 0, i32 19
  store i32 %209, i32* %211, align 4
  %212 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 18
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %216 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %215, i32 0, i32 18
  store i32 %214, i32* %216, align 8
  %217 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 17
  %219 = load i32, i32* %218, align 4
  %220 = call i8* @be32_to_cpu(i32 %219)
  %221 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %222 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %221, i32 0, i32 17
  store i8* %220, i8** %222, align 8
  %223 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 16
  %225 = load i32, i32* %224, align 4
  %226 = call i8* @be32_to_cpu(i32 %225)
  %227 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %228 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %227, i32 0, i32 16
  store i8* %226, i8** %228, align 8
  %229 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i32 0, i32 15
  %231 = load i32, i32* %230, align 4
  %232 = call i8* @be32_to_cpu(i32 %231)
  %233 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %234 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %233, i32 0, i32 15
  store i8* %232, i8** %234, align 8
  %235 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %235, i32 0, i32 14
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %239 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %238, i32 0, i32 14
  store i32 %237, i32* %239, align 4
  %240 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %240, i32 0, i32 13
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %244 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %243, i32 0, i32 13
  store i32 %242, i32* %244, align 8
  %245 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %245, i32 0, i32 12
  %247 = load i32, i32* %246, align 4
  %248 = call i8* @be16_to_cpu(i32 %247)
  %249 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %250 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %249, i32 0, i32 12
  store i8* %248, i8** %250, align 8
  %251 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %251, i32 0, i32 11
  %253 = load i32, i32* %252, align 4
  %254 = call i8* @be32_to_cpu(i32 %253)
  %255 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %256 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %255, i32 0, i32 11
  store i8* %254, i8** %256, align 8
  %257 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %258 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %257, i32 0, i32 10
  %259 = load i32, i32* %258, align 4
  %260 = call i8* @be32_to_cpu(i32 %259)
  %261 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %262 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %261, i32 0, i32 10
  store i8* %260, i8** %262, align 8
  %263 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %263, i32 0, i32 9
  %265 = load i32, i32* %264, align 4
  %266 = call i8* @be32_to_cpu(i32 %265)
  %267 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %268 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %267, i32 0, i32 9
  store i8* %266, i8** %268, align 8
  %269 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %269, i32 0, i32 8
  %271 = load i32, i32* %270, align 4
  %272 = call i8* @be32_to_cpu(i32 %271)
  %273 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %274 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %273, i32 0, i32 8
  store i8* %272, i8** %274, align 8
  %275 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %276 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %275, i32 0, i32 7
  %277 = load i32, i32* %276, align 4
  %278 = call i8* @be32_to_cpu(i32 %277)
  %279 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %280 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %279, i32 0, i32 7
  store i8* %278, i8** %280, align 8
  %281 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %282 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %281, i32 0, i32 6
  %283 = load i32, i32* %282, align 4
  %284 = call i8* @be32_to_cpu(i32 %283)
  %285 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %286 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %285, i32 0, i32 6
  store i8* %284, i8** %286, align 8
  %287 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %288 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %287, i32 0, i32 5
  %289 = load i32, i32* %288, align 4
  %290 = call i8* @be32_to_cpu(i32 %289)
  %291 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %292 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %291, i32 0, i32 5
  store i8* %290, i8** %292, align 8
  %293 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %294 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %293, i32 0, i32 4
  store i64 0, i64* %294, align 8
  %295 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %296 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %295, i32 0, i32 4
  %297 = load i32, i32* %296, align 4
  %298 = call i8* @be32_to_cpu(i32 %297)
  %299 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %300 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %299, i32 0, i32 3
  store i8* %298, i8** %300, align 8
  %301 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %302 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %301, i32 0, i32 3
  %303 = load i32, i32* %302, align 4
  %304 = call i8* @be64_to_cpu(i32 %303)
  %305 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %306 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %305, i32 0, i32 2
  store i8* %304, i8** %306, align 8
  %307 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %308 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %307, i32 0, i32 2
  %309 = load i32, i32* %308, align 4
  %310 = call i8* @be64_to_cpu(i32 %309)
  %311 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %312 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %311, i32 0, i32 1
  store i8* %310, i8** %312, align 8
  %313 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %314 = call i64 @xfs_sb_version_hasmetauuid(%struct.xfs_sb* %313)
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %322

316:                                              ; preds = %3
  %317 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %318 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %317, i32 0, i32 0
  %319 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %320 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %319, i32 0, i32 1
  %321 = call i32 @uuid_copy(i32* %318, i32* %320)
  br label %328

322:                                              ; preds = %3
  %323 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %324 = getelementptr inbounds %struct.xfs_sb, %struct.xfs_sb* %323, i32 0, i32 0
  %325 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %326 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %325, i32 0, i32 0
  %327 = call i32 @uuid_copy(i32* %324, i32* %326)
  br label %328

328:                                              ; preds = %322, %316
  %329 = load i32, i32* %6, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %334

331:                                              ; preds = %328
  %332 = load %struct.xfs_sb*, %struct.xfs_sb** %4, align 8
  %333 = call i32 @xfs_sb_quota_from_disk(%struct.xfs_sb* %332)
  br label %334

334:                                              ; preds = %331, %328
  ret void
}

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i8* @be64_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i8* @be16_to_cpu(i32) #1

declare dso_local i64 @xfs_sb_version_hasmetauuid(%struct.xfs_sb*) #1

declare dso_local i32 @uuid_copy(i32*, i32*) #1

declare dso_local i32 @xfs_sb_quota_from_disk(%struct.xfs_sb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
