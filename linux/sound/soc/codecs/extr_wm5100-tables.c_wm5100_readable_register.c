
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
 unsigned int WM5100_DSP1_DM_0 ;
 unsigned int WM5100_DSP1_DM_511 ;
 unsigned int WM5100_DSP1_PM_0 ;
 unsigned int WM5100_DSP1_PM_1535 ;
 unsigned int WM5100_DSP1_ZM_0 ;
 unsigned int WM5100_DSP1_ZM_2047 ;
 unsigned int WM5100_DSP2_DM_0 ;
 unsigned int WM5100_DSP2_DM_511 ;
 unsigned int WM5100_DSP2_PM_0 ;
 unsigned int WM5100_DSP2_PM_1535 ;
 unsigned int WM5100_DSP2_ZM_0 ;
 unsigned int WM5100_DSP2_ZM_2047 ;
 unsigned int WM5100_DSP3_DM_0 ;
 unsigned int WM5100_DSP3_DM_511 ;
 unsigned int WM5100_DSP3_PM_0 ;
 unsigned int WM5100_DSP3_PM_1535 ;
 unsigned int WM5100_DSP3_ZM_0 ;
 unsigned int WM5100_DSP3_ZM_2047 ;
bool wm5100_readable_register(struct device *dev, unsigned int reg)
{
 switch (reg) {
 case 129:
 case 674:
 case 698:
 case 128:
 case 133:
 case 132:
 case 131:
 case 705:
 case 704:
 case 703:
 case 702:
 case 701:
 case 700:
 case 699:
 case 766:
 case 764:
 case 765:
 case 281:
 case 280:
 case 279:
 case 278:
 case 384:
 case 383:
 case 382:
 case 381:
 case 380:
 case 379:
 case 378:
 case 377:
 case 376:
 case 375:
 case 374:
 case 373:
 case 273:
 case 272:
 case 323:
 case 277:
 case 276:
 case 275:
 case 274:
 case 875:
 case 365:
 case 364:
 case 271:
 case 270:
 case 269:
 case 268:
 case 314:
 case 313:
 case 322:
 case 321:
 case 320:
 case 319:
 case 318:
 case 317:
 case 316:
 case 315:
 case 130:
 case 312:
 case 874:
 case 873:
 case 872:
 case 871:
 case 870:
 case 869:
 case 868:
 case 867:
 case 165:
 case 164:
 case 163:
 case 706:
 case 161:
 case 160:
 case 684:
 case 683:
 case 159:
 case 158:
 case 682:
 case 681:
 case 157:
 case 156:
 case 680:
 case 679:
 case 155:
 case 154:
 case 678:
 case 677:
 case 676:
 case 675:
 case 697:
 case 162:
 case 696:
 case 695:
 case 694:
 case 693:
 case 692:
 case 691:
 case 690:
 case 689:
 case 688:
 case 687:
 case 686:
 case 685:
 case 153:
 case 152:
 case 151:
 case 150:
 case 763:
 case 752:
 case 743:
 case 742:
 case 741:
 case 740:
 case 739:
 case 738:
 case 737:
 case 762:
 case 761:
 case 760:
 case 759:
 case 758:
 case 757:
 case 756:
 case 755:
 case 754:
 case 753:
 case 751:
 case 750:
 case 749:
 case 748:
 case 747:
 case 746:
 case 745:
 case 744:
 case 736:
 case 731:
 case 728:
 case 727:
 case 726:
 case 725:
 case 724:
 case 723:
 case 722:
 case 735:
 case 734:
 case 733:
 case 732:
 case 730:
 case 729:
 case 721:
 case 716:
 case 713:
 case 712:
 case 711:
 case 710:
 case 709:
 case 708:
 case 707:
 case 720:
 case 719:
 case 718:
 case 717:
 case 715:
 case 714:
 case 149:
 case 148:
 case 147:
 case 146:
 case 145:
 case 144:
 case 143:
 case 142:
 case 141:
 case 140:
 case 139:
 case 138:
 case 137:
 case 136:
 case 135:
 case 134:
 case 261:
 case 260:
 case 259:
 case 258:
 case 257:
 case 256:
 case 255:
 case 254:
 case 253:
 case 252:
 case 251:
 case 250:
 case 249:
 case 248:
 case 247:
 case 246:
 case 245:
 case 244:
 case 243:
 case 242:
 case 241:
 case 240:
 case 239:
 case 238:
 case 237:
 case 236:
 case 235:
 case 234:
 case 233:
 case 232:
 case 231:
 case 230:
 case 229:
 case 228:
 case 227:
 case 226:
 case 225:
 case 224:
 case 223:
 case 222:
 case 221:
 case 220:
 case 219:
 case 218:
 case 217:
 case 216:
 case 215:
 case 214:
 case 213:
 case 212:
 case 211:
 case 210:
 case 209:
 case 208:
 case 207:
 case 206:
 case 205:
 case 204:
 case 203:
 case 202:
 case 201:
 case 200:
 case 199:
 case 198:
 case 197:
 case 196:
 case 195:
 case 194:
 case 193:
 case 192:
 case 191:
 case 190:
 case 189:
 case 188:
 case 187:
 case 186:
 case 185:
 case 184:
 case 183:
 case 182:
 case 181:
 case 180:
 case 179:
 case 178:
 case 177:
 case 176:
 case 175:
 case 174:
 case 173:
 case 172:
 case 171:
 case 170:
 case 169:
 case 168:
 case 167:
 case 166:
 case 866:
 case 865:
 case 864:
 case 863:
 case 862:
 case 861:
 case 860:
 case 859:
 case 858:
 case 857:
 case 856:
 case 855:
 case 854:
 case 853:
 case 852:
 case 851:
 case 850:
 case 849:
 case 848:
 case 847:
 case 846:
 case 845:
 case 844:
 case 843:
 case 842:
 case 841:
 case 840:
 case 839:
 case 838:
 case 837:
 case 836:
 case 835:
 case 834:
 case 833:
 case 832:
 case 831:
 case 830:
 case 829:
 case 828:
 case 827:
 case 826:
 case 825:
 case 824:
 case 823:
 case 822:
 case 821:
 case 820:
 case 819:
 case 818:
 case 817:
 case 816:
 case 815:
 case 814:
 case 813:
 case 812:
 case 811:
 case 810:
 case 809:
 case 808:
 case 807:
 case 806:
 case 805:
 case 804:
 case 803:
 case 802:
 case 801:
 case 800:
 case 799:
 case 798:
 case 797:
 case 796:
 case 795:
 case 794:
 case 793:
 case 792:
 case 791:
 case 790:
 case 789:
 case 788:
 case 787:
 case 786:
 case 785:
 case 784:
 case 783:
 case 782:
 case 781:
 case 780:
 case 779:
 case 778:
 case 777:
 case 776:
 case 775:
 case 774:
 case 773:
 case 772:
 case 771:
 case 496:
 case 495:
 case 494:
 case 493:
 case 492:
 case 491:
 case 490:
 case 489:
 case 468:
 case 467:
 case 466:
 case 465:
 case 464:
 case 463:
 case 462:
 case 461:
 case 440:
 case 439:
 case 438:
 case 437:
 case 436:
 case 435:
 case 434:
 case 433:
 case 412:
 case 411:
 case 410:
 case 409:
 case 408:
 case 407:
 case 406:
 case 405:
 case 673:
 case 672:
 case 671:
 case 670:
 case 669:
 case 668:
 case 667:
 case 666:
 case 665:
 case 664:
 case 663:
 case 662:
 case 661:
 case 660:
 case 659:
 case 658:
 case 363:
 case 362:
 case 361:
 case 360:
 case 359:
 case 358:
 case 357:
 case 356:
 case 355:
 case 354:
 case 353:
 case 352:
 case 351:
 case 350:
 case 349:
 case 348:
 case 347:
 case 346:
 case 345:
 case 344:
 case 343:
 case 342:
 case 341:
 case 340:
 case 339:
 case 338:
 case 337:
 case 336:
 case 335:
 case 334:
 case 333:
 case 332:
 case 646:
 case 645:
 case 644:
 case 643:
 case 642:
 case 641:
 case 640:
 case 639:
 case 638:
 case 637:
 case 636:
 case 635:
 case 634:
 case 633:
 case 632:
 case 631:
 case 652:
 case 651:
 case 650:
 case 649:
 case 648:
 case 647:
 case 594:
 case 593:
 case 592:
 case 591:
 case 590:
 case 589:
 case 588:
 case 587:
 case 586:
 case 585:
 case 584:
 case 583:
 case 582:
 case 581:
 case 580:
 case 579:
 case 600:
 case 599:
 case 598:
 case 597:
 case 596:
 case 595:
 case 542:
 case 541:
 case 540:
 case 539:
 case 538:
 case 537:
 case 536:
 case 535:
 case 534:
 case 533:
 case 532:
 case 531:
 case 530:
 case 529:
 case 528:
 case 527:
 case 548:
 case 547:
 case 546:
 case 545:
 case 544:
 case 543:
 case 770:
 case 769:
 case 768:
 case 767:
 case 297:
 case 296:
 case 295:
 case 294:
 case 293:
 case 292:
 case 291:
 case 290:
 case 289:
 case 288:
 case 287:
 case 286:
 case 285:
 case 284:
 case 283:
 case 282:
 case 371:
 case 370:
 case 369:
 case 368:
 case 367:
 case 366:
 case 266:
 case 265:
 case 264:
 case 263:
 case 262:
 case 267:
 case 307:
 case 305:
 case 303:
 case 301:
 case 310:
 case 309:
 case 308:
 case 306:
 case 304:
 case 302:
 case 300:
 case 311:
 case 299:
 case 298:
 case 372:
 case 488:
 case 477:
 case 475:
 case 474:
 case 473:
 case 472:
 case 471:
 case 470:
 case 469:
 case 487:
 case 486:
 case 485:
 case 484:
 case 483:
 case 482:
 case 481:
 case 480:
 case 479:
 case 478:
 case 476:
 case 460:
 case 449:
 case 447:
 case 446:
 case 445:
 case 444:
 case 443:
 case 442:
 case 441:
 case 459:
 case 458:
 case 457:
 case 456:
 case 455:
 case 454:
 case 453:
 case 452:
 case 451:
 case 450:
 case 448:
 case 432:
 case 421:
 case 419:
 case 418:
 case 417:
 case 416:
 case 415:
 case 414:
 case 413:
 case 431:
 case 430:
 case 429:
 case 428:
 case 427:
 case 426:
 case 425:
 case 424:
 case 423:
 case 422:
 case 420:
 case 404:
 case 393:
 case 391:
 case 390:
 case 389:
 case 388:
 case 387:
 case 386:
 case 385:
 case 403:
 case 402:
 case 401:
 case 400:
 case 399:
 case 398:
 case 397:
 case 396:
 case 395:
 case 394:
 case 392:
 case 657:
 case 656:
 case 655:
 case 654:
 case 653:
 case 331:
 case 330:
 case 329:
 case 328:
 case 327:
 case 326:
 case 325:
 case 324:
 case 630:
 case 619:
 case 608:
 case 606:
 case 605:
 case 604:
 case 603:
 case 602:
 case 601:
 case 629:
 case 628:
 case 627:
 case 626:
 case 625:
 case 624:
 case 623:
 case 622:
 case 621:
 case 620:
 case 618:
 case 617:
 case 616:
 case 615:
 case 614:
 case 613:
 case 612:
 case 611:
 case 610:
 case 609:
 case 607:
 case 578:
 case 567:
 case 556:
 case 554:
 case 553:
 case 552:
 case 551:
 case 550:
 case 549:
 case 577:
 case 576:
 case 575:
 case 574:
 case 573:
 case 572:
 case 571:
 case 570:
 case 569:
 case 568:
 case 566:
 case 565:
 case 564:
 case 563:
 case 562:
 case 561:
 case 560:
 case 559:
 case 558:
 case 557:
 case 555:
 case 526:
 case 515:
 case 504:
 case 502:
 case 501:
 case 500:
 case 499:
 case 498:
 case 497:
 case 525:
 case 524:
 case 523:
 case 522:
 case 521:
 case 520:
 case 519:
 case 518:
 case 517:
 case 516:
 case 514:
 case 513:
 case 512:
 case 511:
 case 510:
 case 509:
 case 508:
 case 507:
 case 506:
 case 505:
 case 503:
  return 1;
 default:
  if ((reg >= WM5100_DSP1_PM_0 && reg <= WM5100_DSP1_PM_1535) ||
      (reg >= WM5100_DSP1_ZM_0 && reg <= WM5100_DSP1_ZM_2047) ||
      (reg >= WM5100_DSP1_DM_0 && reg <= WM5100_DSP1_DM_511) ||
      (reg >= WM5100_DSP2_PM_0 && reg <= WM5100_DSP2_PM_1535) ||
      (reg >= WM5100_DSP2_ZM_0 && reg <= WM5100_DSP2_ZM_2047) ||
      (reg >= WM5100_DSP2_DM_0 && reg <= WM5100_DSP2_DM_511) ||
      (reg >= WM5100_DSP3_PM_0 && reg <= WM5100_DSP3_PM_1535) ||
      (reg >= WM5100_DSP3_ZM_0 && reg <= WM5100_DSP3_ZM_2047) ||
      (reg >= WM5100_DSP3_DM_0 && reg <= WM5100_DSP3_DM_511))
   return 1;
  else
   return 0;
 }
}
